provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-test-vpc"
  }
}

module "vpc_flow_log_attachment" {
  source = "./flow-log"

  vpc_id = aws_vpc.this.id
}