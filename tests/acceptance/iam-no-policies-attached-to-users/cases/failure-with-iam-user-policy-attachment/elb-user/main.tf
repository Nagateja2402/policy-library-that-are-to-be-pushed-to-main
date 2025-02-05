resource "aws_iam_user" "lb" {
  name = "elb-user"
  path = "/system/"
}

resource "aws_iam_access_key" "lb" {
  user = aws_iam_user.lb.name
}

data "aws_iam_policy_document" "this" {
  statement {
    actions = [
      "ec2:Describe*"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }
}

resource "aws_iam_policy" "lb_ro" {
  name   = "elb-user-policy"
  policy = data.aws_iam_policy_document.this.json
}

resource "aws_iam_user_policy_attachment" "policy_attachment" {
  user       = aws_iam_user.lb.name
  policy_arn = aws_iam_policy.lb_ro.arn
}

provider "aws" {
  region = "us-west-2"
}