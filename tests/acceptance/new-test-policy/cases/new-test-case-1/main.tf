provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "vpc_one" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "group_one" {
  vpc_id = aws_vpc.vpc_one.id

  ingress {
    protocol    = "tcp"
    from_port   = 23
    to_port     = 25
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "group_two" {
  vpc_id = aws_vpc.vpc_one.id
}

resource "aws_security_group_rule" "this" {
  security_group_id = aws_security_group.group_one.id

  type             = "ingress"
  protocol         = "nil"
  from_port        = 8844
  to_port          = 8855
  ipv6_cidr_blocks = ["::/0"]
}

resource "aws_security_group" "group_three" {
  vpc_id = aws_vpc.vpc_one.id
}

resource "aws_vpc_security_group_ingress_rule" "this" {
  security_group_id = aws_security_group.group_one.id

  ip_protocol = "tcp"
  from_port   = 24
  to_port     = 35
  cidr_ipv4   = "0.0.0.0/0"
}