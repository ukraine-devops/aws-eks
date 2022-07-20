# How we work with Terraform

Add "dotenv" plugin to ~/.zshrc config, so you can automatic pickup 
your .env file, when start new terminal session

## copy needed configuration from another .env.config:
ls .
`.env .env.sandbox .env.develop .env.testing`

`cp .env.testing .env`

## .env file example

AWS_PROFILE=<profile_name>
TF_CLI_ARGS_init='-backend-config="bucket=<s3_bucket_name_for_terraform_backend"'

# login to aws with 2FA 

`aws sso login`

# Get rid of any previous configuration 

`terraform init -reconfigure`

# use 'terraform plan' command to test your terraform configuration, example:

terraform plan -var-file ./sandbox.tfvars.json -var runners_token=<token_for_gitlab_runner>

## sandbox.tfvars.json example

```json
{
  "environment": "sandbox",
  "domain_name": "sandbox.site.net",
  "eks_cluster_name": "my-cluster",
  "vpc_name": "my-site-vpc",
  "rds_instance_type": "db.t4.large",
  "gitlab_group_id": "123456789",
  "gitlab_create_runner": true,
  "sso_admin_role_arn": "arn:aws:iam::12345678987654:role/AWSReservedSSO_AdminAccess_789456123"
}
```