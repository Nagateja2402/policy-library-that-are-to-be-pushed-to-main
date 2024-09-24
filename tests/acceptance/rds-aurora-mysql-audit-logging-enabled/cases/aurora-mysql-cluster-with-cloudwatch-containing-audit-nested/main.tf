provider "aws" {
  region = "us-west-2"
}

module "rds-clusters" {
  source = "./rds-clusters"
  cloudwatch_logs = ["audit", "error"]
  engine_type = "aurora-mysql"
}
