resource "aws_redshift_cluster" "rscluster" {
  cluster_identifier                  = "tf-redshift-cluster"
  master_password                     = "Newpass12345678"
  master_username                     = "rscluster_name"
  database_name                       = var.db_name_variable
  node_type                           = "dc1.large"
  cluster_type                        = "single-node"
  publicly_accessible                 = true
  automated_snapshot_retention_period = 10
  allow_version_upgrade               = true
  enhanced_vpc_routing                = true
}
