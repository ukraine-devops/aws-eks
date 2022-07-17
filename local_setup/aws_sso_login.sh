# for sso setup from scratch 
aws configure sso

# use one account setup and replicate approach to all needed with different sso_account_id
# sso_account_ids were shown during the command execution phase 'aws configure sso'

# go to ~/.aws/config and edit that file as shown below
$ nano config

[profile dev]
sso_start_url = https://company.awsapps.com/start
sso_region = us-west-1
sso_account_id = xxxxxxxxxxxxxx
sso_role_name = AdminAccess
[profile prod]
sso_start_url = https://company.awsapps.com/start
sso_region = us-west-1
sso_account_id = xxxxxxxxxxxxx
sso_role_name = AdminAccess

# check ~/.aws/credentials file
[default]
aws_access_key_id=XXXXXXXXXXXXX
aws_secret_access_key=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

# you can use commands with --profile parameter
aws s3 ls --profile prod

# or export profile name to ENV variable
export AWS_PROFILE=dev

# login to 'dev' profile
aws sso login 

# to check what account is used for commands
aws sts get-caller-identity
