name = "ec2-metadata-imdsv2-required"

disabled = false

case "Account level http token required" {
    path = "cases/account-level-http-token-required"
    expectation {
        result = true
    }
}

case "Instance level http token required" {
    path = "cases/instance-level-http-token-required"
    expectation {
        result = true
    }
}

case "Account level http token optional" {
    path = "cases/account-level-http-token-optional"
    expectation {
        result = false
    }
}

case "Instance level http token optional" {
    path = "cases/instance-level-http-token-optional"
    expectation {
        result = false
    }
}

case "Account level http token required nested module" {
    path = "cases/account-level-http-token-required-nested-module"
    expectation {
        result = true
    }
}

case "Instance level http token required nested module" {
    path = "cases/instance-level-http-token-required-nested-module"
    expectation {
        result = true
    }
}

case "Account level http token default" {
    path = "cases/account-level-http-token-default"
    expectation {
        result = false
    }
}