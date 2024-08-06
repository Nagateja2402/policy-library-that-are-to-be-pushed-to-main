terraform {
  required_providers {
    aws = {
      version = " ~> 3.0"
      source  = "registry.terraform.io/hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

module "redshift_cluster" {
  source                                       = "./redshift-cluster"
  automated_snapshot_retention_period_variable = 10
}
