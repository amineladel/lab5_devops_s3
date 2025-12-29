terraform {
  backend "s3" {
    bucket         = "amineladel-devops-tofu-state"
    key            = "td5/scripts/tofu/live/tofu-state"
    region         = "us-east-2" # Your AWS region
    encrypt        = true
    dynamodb_table = "amineladel-devops-tofu-state"
  }
}