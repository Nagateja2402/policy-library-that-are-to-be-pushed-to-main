resource "aws_vpc" "vpc" {
  cidr_block = "0.0.0.0/16"
}

module "network_acl" {
  source = "./network-acl"
  vpc_id = aws_vpc.vpc.id
}

module "network_acl_rule" {
  source         = "./network-acl-rule"
  network_acl_id = module.network_acl.network_acl_id
}

provider "aws" {
  region = "us-west-2"
}