terraform {
  required_providers {
    aws = {
      version = " ~> 3.76"
      source  = "registry.terraform.io/hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "rds-clusters" {
  source                     = "./rds-clusters"
  storage_encrypted_variable = true
}
