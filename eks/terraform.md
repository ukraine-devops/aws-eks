# How we work with Terraform

Add "dotenv" plugin to ~/.zshrc config, so you can automatic pick up 
your .env file, when starting new terminal session.

```sh
# my main settings as example
plugins=(
    git 
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    dotenv
    )
export PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
ZSH_THEME="spaceship"
```
## copy configuration .env.config:
```sh
ls ./
# output
.env .env.sandbox .env.develop .env.testing

# copy config data to .env file
cp .env.testing .env`
```
__.env__ example
```
AWS_PROFILE=<profile_name>
TF_CLI_ARGS_init='-backend-config="bucket=<s3_bucket_name_for_terraform_backend"'
```
## login to aws with 2FA 

`aws sso login`

## get rid of any previous configurations 
so you can switch to another AWS account any time:

`terraform init -reconfigure`

## use 'terraform plan' 
to test your terraform files, for example:

`terraform plan -var-file ./sandbox.tfvars.json -var runners_token=<token_for_gitlab_runner>`

__sandbox.tfvars.json__ example

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