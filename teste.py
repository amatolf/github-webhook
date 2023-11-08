import json
import requests
import os
from base64 import b64encode

def get_sha_for_file(repo, path, headers):
    """Get the SHA of an existing file in the repository."""
    api_url = f'https://api.github.com/repos/{repo}/contents/{path}'
    response = requests.get(api_url, headers=headers)
    if response.status_code == 200:
        return response.json()['sha']
    else:
        return None

def create_or_update_github_file():
    token = os.getenv('GITHUB_TOKEN')
    repo = 'amatolf/nuclea-custom-control-tower-configuration'
    path = '.github/workflows/blank.yaml'
    api_url = f'https://api.github.com/repos/{repo}/contents/{path}'

    commit_message = 'Create or update blank.yaml workflow'
    content = '''
name: Hello World Workflow

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
        'Authorization': f'token {token}',
        'Accept': 'application/vnd.github.v3+json',
    }

    sha = get_sha_for_file(repo, path, headers)

    data = {
        'message': commit_message,
        'content': encoded_content,
    }

    if sha:  # If the file exists, include the SHA to update it
        data['sha'] = sha

    response = requests.put(api_url, headers=headers, data=json.dumps(data))
    if response.status_code in {200, 201}:
        action = 'updated' if sha else 'created'
        print(f'File {path} {action} successfully on GitHub repository {repo}.')
    else:
        print(f'Failed to create or update file. Status code: {response.status_code}, Response: {response.json()}')

    return {
        'statusCode': response.status_code,
        'body': json.dumps(response.json())
    }

if __name__ == '__main__':
    result = create_or_update_github_file()
    print(result)
