provider "aws" {
  region = "us-east-1"
}

module "autoscaling_groups" {
  source = "./autoscaling-groups"
}
