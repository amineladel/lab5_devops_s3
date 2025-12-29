provider "aws" {
  region = "us-east-2" # Your AWS region
}

module "state" {
  source = "github.com/amineladel/lab5_devops_s3//scripts/tofu/modules/state-bucket"
  name   = "amineladel-devops-tofu-state"
}