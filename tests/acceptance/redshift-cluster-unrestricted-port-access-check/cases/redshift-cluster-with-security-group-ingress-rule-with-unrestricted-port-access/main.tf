provider "aws" {
  region = "us-west-2"
}

resource "aws_redshift_cluster" "rscluster" {
  cluster_identifier                  = "tf-redshift-cluster"
  database_name                       = "newdb"
  master_username                     = "exampleuser"
  master_password                     = "Newpass12345678"
  node_type                           = "dc1.large"
  cluster_type                        = "single-node"
  publicly_accessible                 = true
  automated_snapshot_retention_period = 10
  allow_version_upgrade               = true
  enhanced_vpc_routing                = true
  vpc_security_group_ids              = [aws_security_group.new_security_group.id]
}

resource "aws_security_group" "new_security_group" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "new_ingress_rule" {
  security_group_id = aws_security_group.new_security_group.id
  cidr_ipv6         = "::/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}