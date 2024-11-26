name = "ec2-ebs-encryption-enabled"

disabled = false

case "EBS volume is encrypted" {
    path = "cases/encryption-enabled"
    expectation {
        result = true
    }
}

case "EBS volume is not encrypted" {
    path = "cases/encryption-disabled"
    expectation {
        result = false
    }
}

case "EBS volume is encrypted. Resource in nested module" {
    path = "cases/encryption-enabled-nested-module"
    expectation {
        result = true
    }
}

case "EBS volume is not encrypted. Resource in nested module" {
    path = "cases/encryption-disabled-nested-module"
    expectation {
        result = false
    }
}