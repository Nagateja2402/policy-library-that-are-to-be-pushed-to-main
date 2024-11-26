module "vpc" {
  source = "./vpc"
}

provider "aws" {
  region = "us-west-2"
}