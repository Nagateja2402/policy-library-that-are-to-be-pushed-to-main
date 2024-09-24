provider "aws" {
  region = "us-west-2"
}

module "msk-clusters" {
  source              = "./msk-clusters"
  in_cluster_variable = true
}
