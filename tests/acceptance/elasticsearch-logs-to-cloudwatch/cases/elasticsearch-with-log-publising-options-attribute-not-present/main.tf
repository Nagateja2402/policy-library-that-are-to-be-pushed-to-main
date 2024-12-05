provider "aws" {
  region = "us-west-2"
}

resource "aws_cloudwatch_log_group" "example" {
  name = "example"
}

data "aws_iam_policy_document" "example" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["es.amazonaws.com"]
    }

    actions = [
      "logs:PutLogEvents",
      "logs:PutLogEventsBatch",
      "logs:CreateLogStream",
    ]

    resources = ["arn:aws:logs:*"]
  }
}

resource "aws_cloudwatch_log_resource_policy" "example" {
  policy_name     = "example"
  policy_document = data.aws_iam_policy_document.example.json
}

resource "aws_elasticsearch_domain" "example" {
  domain_name           = "example"
  elasticsearch_version = "7.10"
  encrypt_at_rest {
    enabled = false
  }
  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }

  node_to_node_encryption {
    enabled = false
  }

  tags = {
    Domain = "TestDomain"
  }
}
