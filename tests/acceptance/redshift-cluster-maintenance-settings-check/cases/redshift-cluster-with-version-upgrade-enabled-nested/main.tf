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

module "redshift_cluster" {
  source                   = "./redshift-cluster"
  version_upgrade_variable = true
}
