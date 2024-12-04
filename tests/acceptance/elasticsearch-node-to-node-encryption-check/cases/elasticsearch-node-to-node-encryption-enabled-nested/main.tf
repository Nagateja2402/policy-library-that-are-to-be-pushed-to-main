provider "aws" {
  region = "us-west-2"
}

module "elasticsearch-resources" {
  source = "./elasticsearch-resources"
  encryption_variable = true
}
