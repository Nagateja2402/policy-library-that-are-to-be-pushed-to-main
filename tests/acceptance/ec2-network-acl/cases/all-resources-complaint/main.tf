resource "aws_vpc" "vpc" {
  cidr_block = "0.0.0.0/16"
}

resource "aws_network_acl" "acl" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_network_acl_rule" "rule1" {
  network_acl_id = aws_network_acl.acl.id
  rule_number    = 100
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "10.0.0.12/12"
  from_port      = 22
  to_port        = 22
}

resource "aws_network_acl_rule" "rule2" {
  network_acl_id = aws_network_acl.acl.id
  rule_number    = 101
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = aws_vpc.vpc.cidr_block
  from_port      = 3389
  to_port        = 3389
}

provider "aws" {
  region = "us-west-2"
}