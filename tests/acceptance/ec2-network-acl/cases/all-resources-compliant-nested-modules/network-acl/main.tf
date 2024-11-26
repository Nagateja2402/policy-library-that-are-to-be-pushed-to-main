resource "aws_network_acl" "acl" {
  vpc_id = var.vpc_id
}