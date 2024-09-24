provider "aws" {
  region = "us-west-2"
}

module "rds-clusters" {
  source                   = "./rds-clusters"
  master_username_variable = "myadminuser"
}
