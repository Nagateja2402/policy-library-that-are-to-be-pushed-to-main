name = "iam-no-policies-attached-to-users"

disabled = false

case "Usage of aws_iam_group resource to attach IAM policies" {
    path = "cases/success"
    expectation {
        result = true
    }
}

case "Usage of aws_iam_user_policy to attach IAM policies" {
    path = "cases/failure-with-iam-user-policy"
    expectation {
        result = false
    }
}

case "Usage of aws_iam_user_policy_attachment to attach IAM policies" {
    path = "cases/failure-with-iam-user-policy-attachment"
    expectation {
        result = false
    }
}