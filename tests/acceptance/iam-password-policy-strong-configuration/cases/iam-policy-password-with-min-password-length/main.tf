provider "aws" {
  region = "us-west-2"
}

resource "aws_iam_account_password_policy" "policy" {
  require_uppercase_characters = true
  require_lowercase_characters = true
  require_numbers = true
  require_symbols = true
  minimum_password_length = 6
  max_password_age = 90
  password_reuse_prevention = 24
}

