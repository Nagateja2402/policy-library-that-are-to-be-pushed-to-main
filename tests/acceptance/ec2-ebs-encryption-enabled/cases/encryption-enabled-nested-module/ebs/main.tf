resource "aws_ebs_volume" "this" {
  availability_zone = "us-west-2a"
  encrypted         = true
  size              = 40
}