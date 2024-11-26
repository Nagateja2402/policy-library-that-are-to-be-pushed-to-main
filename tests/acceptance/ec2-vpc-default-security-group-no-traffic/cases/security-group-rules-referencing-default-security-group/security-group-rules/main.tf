resource "aws_vpc" "vpc_one" {
  cidr_block = "10.1.0.0/16"
}

resource "aws_vpc" "vpc_two" {
  cidr_block = "10.2.0.0/16"
}

resource "aws_default_vpc" "default_vpc" {}

// This rule references the vpc's default security group
resource "aws_security_group_rule" "rule" {
  security_group_id = aws_vpc.vpc_one.default_security_group_id

  type        = "ingress"
  protocol    = -1
  from_port   = 0
  to_port     = 0
  cidr_blocks = ["0.0.0.0/0"]
}

// This rule references the default vpc's default security group
resource "aws_vpc_security_group_ingress_rule" "ingress_rule" {
  security_group_id = aws_default_vpc.default_vpc.default_security_group_id

  ip_protocol = "-1"
  from_port   = 0
  to_port     = 0
  cidr_ipv4   = "0.0.0.0/0"
}

// This rule references the default vpc's default security group
resource "aws_vpc_security_group_egress_rule" "egress_rule" {
  security_group_id = aws_default_vpc.default_vpc.default_security_group_id

  ip_protocol = "-1"
  from_port   = 0
  to_port     = 0
  cidr_ipv4   = "0.0.0.0/0"
}