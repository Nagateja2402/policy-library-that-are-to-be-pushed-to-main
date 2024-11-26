variable "vpc_id" {
  type = string
}

resource "aws_flow_log" "this" {
  vpc_id = var.vpc_id

  traffic_type = "ALL"
}