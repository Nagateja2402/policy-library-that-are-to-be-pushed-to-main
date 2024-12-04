provider "aws" {
  region = "us-west-2"
}

module "elasticsearch-resources" {
  source                   = "./elasticsearch-resources"
  encrypt_at_rest_variable = true
}
