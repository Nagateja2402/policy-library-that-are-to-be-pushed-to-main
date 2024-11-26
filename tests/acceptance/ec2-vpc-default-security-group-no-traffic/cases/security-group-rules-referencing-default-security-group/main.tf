provider "aws" {
  region = "us-west-2"
}

module "setup-security-group-rules" {
  source = "./security-group-rules"
}