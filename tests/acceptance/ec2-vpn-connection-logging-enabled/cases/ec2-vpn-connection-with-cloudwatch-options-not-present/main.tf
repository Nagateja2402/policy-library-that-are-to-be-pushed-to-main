provider "aws" {
  region = "us-east-1"
}

resource "aws_dx_gateway" "example" {
  name            = "terraform_ipsec_vpn_example"
  amazon_side_asn = "64512"
}

resource "aws_ec2_transit_gateway" "example" {
  amazon_side_asn = "64513"
  description     = "terraform_ipsec_vpn_example"
  transit_gateway_cidr_blocks = [
    "10.0.0.0/24",
  ]
}

resource "aws_customer_gateway" "example" {
  bgp_asn    = 64514
  ip_address = "10.0.0.1"
  type       = "ipsec.1"

  tags = {
    Name = "terraform_ipsec_vpn_example"
  }
}

resource "aws_dx_gateway_association" "example" {
  dx_gateway_id         = aws_dx_gateway.example.id
  associated_gateway_id = aws_ec2_transit_gateway.example.id

  allowed_prefixes = [
    "10.0.0.0/8",
  ]
}

data "aws_ec2_transit_gateway_dx_gateway_attachment" "example" {
  transit_gateway_id = aws_ec2_transit_gateway.example.id
  dx_gateway_id      = aws_dx_gateway.example.id

  depends_on = [
    aws_dx_gateway_association.example
  ]
}

resource "aws_vpn_connection" "example" {
  customer_gateway_id                     = aws_customer_gateway.example.id
  outside_ip_address_type                 = "PrivateIpv4"
  transit_gateway_id                      = aws_ec2_transit_gateway.example.id
  transport_transit_gateway_attachment_id = data.aws_ec2_transit_gateway_dx_gateway_attachment.example.id
  type                                    = "ipsec.1"
  tunnel1_log_options {
    cloudwatch_log_options {
      log_enabled = true
    }
  }
  tunnel2_log_options {

  }
  tags = {
    Name = "terraform_ipsec_vpn_example"
  }
}
