// This example creates an IAM user, group, policy. Attaches
// the policy to the created group and then adds the user
// to the group.
resource "aws_iam_user" "lb" {
  name = "elb-user"
  path = "/system/"
}

resource "aws_iam_group" "lb-user-group" {
  name = "elb-user-group"
}

resource "aws_iam_user_group_membership" "membership" {
  groups = [aws_iam_group.lb-user-group.id]
  user   = aws_iam_user.lb.name
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.lb.name
}

resource "aws_iam_group_policy" "lb_ro" {
  group = aws_iam_group.lb-user-group.name

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