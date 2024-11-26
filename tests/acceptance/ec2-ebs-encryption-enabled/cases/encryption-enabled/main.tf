resource "aws_ebs_volume" "this" {
  availability_zone = "us-west-2a"
  encrypted         = true
  size              = 40
}

provider "aws" {
  region = "us-west-2"
}