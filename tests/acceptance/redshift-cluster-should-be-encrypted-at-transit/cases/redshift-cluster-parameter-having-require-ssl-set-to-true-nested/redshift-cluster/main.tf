resource "aws_redshift_cluster" "rscluster" {
  cluster_identifier           = "tf-redshift-cluster"
  database_name                = "newdb"
  master_username              = "exampleuser"
  master_password              = "Newpass12345678"
  node_type                    = "dc1.large"
  cluster_type                 = "single-node"
  publicly_accessible          = true
  cluster_parameter_group_name = aws_redshift_parameter_group.new_parameter_grp.name
}

resource "aws_redshift_parameter_group" "new_parameter_grp" {
  name   = "parameter-group-test-terraform"
  family = "redshift-1.0"

  parameter {
    name  = "require_ssl"
    value = "true"
  }

  parameter {
    name  = "query_group"
    value = "example"
  }

  parameter {
    name  = "enable_user_activity_logging"
    value = "true"
  }
}
