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

resource "aws_redshift_cluster" "rscluster" {
  cluster_identifier           = "tf-redshift-cluster"
  database_name                = "newdb"
  master_username              = "exampleuser"
  master_password              = "Newpass12345678"
  node_type                    = "dc1.large"
  cluster_type                 = "single-node"
  publicly_accessible          = true
  cluster_parameter_group_name = aws_redshift_parameter_group.new_parameter_grp.name
}

resource "aws_redshift_parameter_group" "new_parameter_grp" {
  name   = "parameter-group-test-terraform"
  family = "redshift-1.0"

  parameter {
    name  = "query_group"
    value = "example"
  }
}
