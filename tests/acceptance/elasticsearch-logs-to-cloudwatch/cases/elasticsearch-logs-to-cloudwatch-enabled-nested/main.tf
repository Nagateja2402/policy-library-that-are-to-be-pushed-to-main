provider "aws" {
  region = "us-west-2"
}

module "elasticsearch-resources" {
  source = "./elasticsearch-resources"
  enabled_attribute = true
}
