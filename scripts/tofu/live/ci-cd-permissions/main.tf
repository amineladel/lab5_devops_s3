provider "aws" {
  region = "us-east-2"
}

module "oidc_provider" {
  source = "github.com/amineladel/lab5_devops_s3//scripts/tofu/modules/github-aws-oidc"

  provider_url = "https://token.actions.githubusercontent.com" 

}

module "iam_roles" {
  source = "github.com/amineladel/lab5_devops_s3//scripts/tofu/modules/gh-actions-iam-roles"

  name                     = "lambda-sample"
  oidc_provider_arn       = module.oidc_provider.oidc_provider_arn
  enable_iam_role_for_testing = true
  enable_iam_role_for_plan     = true
  enable_iam_role_for_apply    = true
  github_repo                 = "amineladel/lab5_devops_s3"
  lambda_base_name            = "lambda-sample"
  tofu_state_bucket           = "amineladel-devops-tofu-state"
  tofu_state_dynamodb_table   = "amineladel-devops-tofu-state"
}
