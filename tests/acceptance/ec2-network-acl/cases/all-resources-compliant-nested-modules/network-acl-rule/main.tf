resource "aws_network_acl_rule" "rule1" {
  network_acl_id = var.network_acl_id
  rule_number    = 100
  egress         = false
  protocol       = "tcp"
  rule_action    = "allow"
  cidr_block     = "10.0.0.12/12"
  from_port      = 22
  to_port        = 22
}