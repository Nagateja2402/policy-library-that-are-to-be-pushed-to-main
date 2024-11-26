provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-test-vpc"
  }
}

resource "aws_flow_log" "this" {
  vpc_id = aws_vpc.this.id

  traffic_type = "ACCEPT"
}