provider "aws" {
  region = "us-west-2"
}

module "redshift-cluster" {
  source              = "./redshift-clusters"
  cidr_block_variable = "0.0.0.0/0"
}