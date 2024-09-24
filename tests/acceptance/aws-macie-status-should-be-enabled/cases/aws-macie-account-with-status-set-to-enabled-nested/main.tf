provider "aws" {
  region = "us-west-2"
}

module "aws_macie" {
  source           = "./aws-macie"
  aws_macie_status = "ENABLED"
}
