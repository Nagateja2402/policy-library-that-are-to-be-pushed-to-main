name = "rds-instance-default-admin-check"

disabled = false

case "RDS Instance with Default Username" {
    path = "./cases/rds-instance-with-default-username"
    expectation {
        result = false
    }
}

case "RDS Instance with No Username Attribute" {
    path = "./cases/rds-instance-with-no-username-attribute"
    expectation {
        result = false
    }
}

case "RDS Instance without Default Username" {
    path = "./cases/rds-instance-without-default-username"
    expectation {
        result = true
    }
}

case "RDS Instance without Default Username Nested" {
    path = "./cases/rds-instance-without-default-username-nested"
    expectation {
        result = true
    }
}
