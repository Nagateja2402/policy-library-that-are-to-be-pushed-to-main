terraform {
  required_providers {
    aws = {
      version = " ~> 3.0"
      source  = "registry.terraform.io/hashicorp/aws"
    }
  }
}

resource "aws_iam_role" "test_role" {
  name = "test_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}

module "sagemaker-notebook-instance" {
  source                          = "./sagemaker-notebook-instance"
  root_access_variable = "Disabled"
}
