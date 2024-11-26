terraform {
  cloud {
    workspaces {
      name = "ec2-metadata-imdsv2-required"
    }
  }
}