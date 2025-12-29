provider "aws" {
  region = "us-east-2" # Your AWS region
}

module "state" {
  source = "../../modules/state-bucket"
  name   = "amineladel-devops-tofu-state"
}