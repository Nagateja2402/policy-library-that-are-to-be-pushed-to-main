resource "aws_iam_user" "lb" {
  name = "elb-user"
  path = "/system/"
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.lb.name
}

resource "aws_iam_user_policy" "lb_ro" {
  name = "elb-user-policy"
  user = aws_iam_user.lb.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

provider "aws" {
  region = "us-west-2"
}