provider "aws" {
  region = "us-east-1"
}

module "backup_frameworks" {
  source = "./backup-frameworks"
}
