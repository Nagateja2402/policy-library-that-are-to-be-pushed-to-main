resource "aws_redshift_cluster" "rscluster" {
  cluster_identifier                  = "tf-redshift-cluster"
  database_name                       = "newdb"
  master_username                     = "exampleuser"
  master_password                     = "Newpass12345678"
  node_type                           = "dc1.large"
  cluster_type                        = "single-node"
  publicly_accessible                 = true
  automated_snapshot_retention_period = 10
  enhanced_vpc_routing                = var.enhanced_vpc_routing_variable
}
