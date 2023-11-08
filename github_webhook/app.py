import json
import requests
import boto3
from aws_lambda_powertools.utilities.typing import LambdaContext
from base64 import b64encode
import os
import time

iam = boto3.client('iam')
session = boto3.Session()
ssm = session.client('ssm')

def get_parameters_from_store(param_names):
    """
    Retrieves parameters from the AWS Systems Manager Parameter Store.
    
    :param param_names: List of parameter names to retrieve
    :return: Dictionary of parameter values
    """
    try:
        # Retrieve parameters
        response = ssm.get_parameters(
            Names=param_names,
            WithDecryption=True  # Set to True if the parameters are encrypted
        )
        
        # Check for any parameters that AWS couldn't process
        if 'InvalidParameters' in response and response['InvalidParameters']:
            raise ValueError(f"Invalid parameters: {response['InvalidParameters']}")

        # Convert the response to a dictionary of parameter names and values
        return {param['Name']: param['Value'] for param in response['Parameters']}
    
    except NoCredentialsError:
        print("Error: AWS credentials not found.")
    except ClientError as e:
        print(f"An error occurred: {e}")
        raise


def get_secret(secret_name):
    # Create a Secrets Manager client
    session = boto3.session.Session()
    client = session.client(
        service_name='secretsmanager',
        region_name='sa-east-1' 
    )

    try:
        get_secret_value_response = client.get_secret_value(
            SecretId=secret_name
        )
    except ClientError as e:
        raise e
    else:
        # Decrypts secret using the associated KMS CMK
        # Depending on whether the secret is a string or binary, one of these fields will be populated
        if 'SecretString' in get_secret_value_response:
            return get_secret_value_response['SecretString']
        else:
            decoded_binary_secret = base64.b64decode(get_secret_value_response['SecretBinary'])
            return decoded_binary_secret

def detach_user_policy(user_name, policy_arn):
    response = iam.detach_user_policy(
        UserName=user_name,
        PolicyArn=policy_arn
    )
    return response

def delete_user_policy(user_name, policy_name):
    response = iam.delete_user_policy(
        UserName=user_name,
        PolicyName=policy_name
    )
    return response

def delete_service_specific_credential(user_name, service_name):
    # First, list the service-specific credentials to get the ID
    credentials_response = iam.list_service_specific_credentials(
        UserName=user_name,
        ServiceName=service_name
    )
    # Filter out the credentials with 'Active' status
    active_credentials = [
        cred for cred in credentials_response.get('ServiceSpecificCredentials', [])
        if cred['Status'] == 'Active'
    ]
    # Assuming we take the first active credential
    if active_credentials:
        credential_id = active_credentials[0]['ServiceSpecificCredentialId']
        # Now we can delete the service-specific credential
        delete_response = iam.delete_service_specific_credential(
            UserName=user_name,
            ServiceSpecificCredentialId=credential_id
        )
        return delete_response
    else:
        return "No active service-specific credentials found."

def delete_user(user_name):
    response = iam.delete_user(
        UserName=user_name
    )
    return response

def get_sha_for_file(repo, path, headers):
    """Get the SHA of an existing file in the repository."""
    api_url = f'https://api.github.com/repos/{repo}/contents/{path}'
    response = requests.get(api_url, headers=headers)
    if response.status_code == 200:
        return response.json()['sha']
    else:
        return None

def create_or_update_github_file(github_token, git_user, git_password):

    param_keys = [
    '/amatolf/parm1/repo',
    '/amatolf/parm1/path',
    '/amatolf/parm1/api_url_template'
    ]
    
    try:
    # Get parameters
        params = get_parameters_from_store(param_keys)

    # Access the parameters using the names used to store them
        repo = params['/amatolf/parm1/repo']
        path = params['/amatolf/parm1/path']
        api_url_template = params['/amatolf/parm1/api_url_template']

    # Use the retrieved values to format the api_url
        api_url = api_url_template.format(repo=repo, path=path)

    except ValueError as e:
        print(e)
    except KeyError as e:
        print(f"Error: Missing parameter - {e}")

    commit_message = 'Create or update blank.yaml workflow'
    content = '''
name: Copy to GitHub Workflow

on:
  repository_dispatch:
    types:
      - my-custom-event

jobs:
  copy-to-github:
    runs-on: ubuntu-latest
    steps:

      - name: Configure Git Credentials
        run: |
          git config --global credential.helper cache
          echo "protocol=https
          host=git-codecommit.sa-east-1.amazonaws.com
          username=$GIT_USER
          password=$GIT_PASSWORD" | git credential approve
        env:
          GIT_USER: ${{ github.event.client_payload.git_user }}
          GIT_PASSWORD: ${{ github.event.client_payload.git_password }}
        shell: bash

      - name: Clone Repository
        run: |
          REPO_URL="https://git-codecommit.sa-east-1.amazonaws.com/v1/repos/nuclea-custom-control-tower-configuration"
          git clone --mirror "$REPO_URL" codecommit-repo
        shell: bash
          
      - name: Commit and Push Changes to GitHub Repository
        run: |
          cd codecommit-repo
          git push --mirror https://x-access-token:${{ secrets.GITHUB_TOKEN }}@github.com/amatolf/nuclea-custom-control-tower-configuration.git
        shell: bash
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

'''.strip().encode('utf-8')

    encoded_content = b64encode(content).decode('utf-8')

    headers = {
        'Authorization': f'token {github_token}',
        'Accept': 'application/vnd.github.v3+json',
    }

    sha = get_sha_for_file(repo, path, headers)

    data = {
        'message': commit_message,
        'content': encoded_content,
        'committer': {
            'name': git_user,
            'email': f'{git_user}@users.noreply.github.com'
        }
    }

    if sha:  # If the file exists, include the SHA to update it
        data['sha'] = sha

    response = requests.put(api_url, headers=headers, data=json.dumps(data))
    if response.status_code in {200, 201}:
        action = 'updated' if sha else 'created'
        print(f'File {path} {action} successfully on GitHub repository {repo}.')
    else:
        print(f'Failed to create or update file. Status code: {response.status_code}, Response: {response.json()}')

    return response

def lambda_handler(event: dict, context: LambdaContext):
    iam_client = boto3.client('iam')
    user_name = 'UserHook'
    # Retrieve GitHub token from Secrets Manager
    secret_name = 'github_token_secret'  # Name of your secret in AWS Secrets Manager
    github_token = json.loads(get_secret(secret_name))['github_token']
    
    # 1. Create an IAM user named UserHook.
    try:
        iam_client.create_user(UserName=user_name)
        print(f'IAM user {user_name} created successfully')
    except Exception as e:
        print(f'Error creating IAM user: {str(e)}')
        return {
            'statusCode': 500,
            'body': json.dumps('Error creating IAM user')
        }

    # 2. Attach a policy to UserHook that grants read-only access to AWS CodeCommit.
    try:
        policy_arn = 'arn:aws:iam::aws:policy/AWSCodeCommitReadOnly'
        iam_client.attach_user_policy(UserName=user_name, PolicyArn=policy_arn)
        print(f'Read-only access to AWS CodeCommit granted to {user_name}')
    except Exception as e:
        print(f'Error attaching policy to IAM user: {str(e)}')
        return {
            'statusCode': 500,
            'body': json.dumps('Error attaching policy to IAM user')
        }

    # 3. Attach an inline policy to UserHook that grants KMS decrypt permissions.
    kms_policy = {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "kms:Decrypt",
                "Resource": "arn:aws:kms:sa-east-1:774432765225:key/ebca8cca-d9ab-4009-9c15-7c9c3d660d31"
            }
        ]
    }

    try:
        iam_client.put_user_policy(
            UserName=user_name,
            PolicyName='KMSDecryptPolicy',
            PolicyDocument=json.dumps(kms_policy)
        )
        print(f'KMS decrypt permissions granted to {user_name}')
    except Exception as e:
        print(f'Error attaching inline KMS policy to IAM user: {str(e)}')
        return {
            'statusCode': 500,
            'body': json.dumps('Error attaching inline KMS policy to IAM user')
        }

    # 4. Create Git HTTPS credentials for UserHook.
    try:
        credentials = iam_client.create_service_specific_credential(UserName=user_name, ServiceName='codecommit.amazonaws.com')
        print(f'Git HTTPS credentials for {user_name} created successfully')
        git_user = credentials['ServiceSpecificCredential']['ServiceUserName']
        git_password = credentials['ServiceSpecificCredential']['ServicePassword']
    except Exception as e:
        print(f'Error creating Git HTTPS credentials: {str(e)}')
        return {
            'statusCode': 500,
            'body': json.dumps('Error creating Git HTTPS credentials')
        }
    
    pre_action_response = create_or_update_github_file(github_token, git_user, git_password)
    if pre_action_response.status_code not in {200, 201}:
        return {
            'statusCode': pre_action_response.status_code,
            'body': json.dumps(pre_action_response.json())
        }
    
    # 5. Call the GitHub API
    # Retrieve GitHub token from Secrets Manager
    secret_name = 'github_token_secret'  # Name of your secret in AWS Secrets Manager
    github_token = json.loads(get_secret(secret_name))['github_token']

    param_keys2 = [
    '/amatolf/parm1/repo',
    '/amatolf/parm1/github_api_url'
    ]
    
    try:
    # Get parameters
        params = get_parameters_from_store(param_keys2)

    # Access the parameters using the names used to store them
        repo = params['/amatolf/parm1/repo']
        github_api_url = params['/amatolf/parm1/github_api_url']

    # Use the retrieved values to format the api_url
        url = github_api_url.format(repo=repo)

    except ValueError as e:
        print(e)
    except KeyError as e:
        print(f"Error: Missing parameter - {e}")

 
    headers = {
        "Authorization": f"token {github_token}",
        "Accept": "application/vnd.github.v3+json"
    }
    data = {
        "event_type": "my-custom-event",
        "client_payload": {
            "git_user": git_user,
            "git_password": git_password,
            "key1": "value1",
            "key2": "value2"
        }
    }
    time.sleep(5)
    response = requests.post(url, headers=headers, data=json.dumps(data))
    if response.status_code not in {200, 201, 204}:
        return {
            'statusCode': response.status_code,
            'body': response.text
        }
    
    time.sleep(20)

    detach_user_policy('UserHook', 'arn:aws:iam::aws:policy/AWSCodeCommitReadOnly')
    time.sleep(2)

    delete_user_policy('UserHook', 'KMSDecryptPolicy')
    time.sleep(2)

    delete_service_specific_credential('UserHook', 'codecommit.amazonaws.com')
    time.sleep(2)

    delete_user('UserHook')
    time.sleep(2)

    post_action_response = create_or_update_github_file(github_token, git_user, git_password)
    if post_action_response.status_code not in {200, 201}:
        return {
            'statusCode': post_action_response.status_code,
            'body': json.dumps(post_action_response.json())
        }
    


    return {
        'statusCode': 200,
        'body': json.dumps('Action completed successfully')
    }      
 
