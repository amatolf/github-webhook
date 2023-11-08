aws iam detach-user-policy --user-name UserHook --policy-arn arn:aws:iam::aws:policy/AWSCodeCommitReadOnly
sleep 2
aws iam delete-user-policy --user-name UserHook --policy-name KMSDecryptPolicy
sleep 2
aws iam delete-service-specific-credential --user-name UserHook --service-specific-credential-id $(aws iam list-service-specific-credentials --user-name UserHook --service-name codecommit.amazonaws.com --query 'ServiceSpecificCredentials[?Status==`Active`].ServiceSpecificCredentialId' --output text)
sleep 2
aws iam delete-user --user-name UserHook
