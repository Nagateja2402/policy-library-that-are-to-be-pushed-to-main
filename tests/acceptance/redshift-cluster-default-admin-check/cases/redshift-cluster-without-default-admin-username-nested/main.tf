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

module "redshift-cluster" {
  source                   = "./redshift-cluster"
  master_username_variable = "redshift_cluster_admin"
}
