provider "aws" {
  region = "us-west-2"
}

resource "aws_default_vpc" "this" {
  tags = {
    Name = "default-vpc"
  }
}