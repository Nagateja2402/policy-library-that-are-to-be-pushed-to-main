provider "aws" {
  region = "us-east-1"
}

module "ec2-launch-templates" {
  source            = "./ec2-launch-templates"
  http_tokens_value = "required"
}