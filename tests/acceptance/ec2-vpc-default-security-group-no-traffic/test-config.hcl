name = "ec2-vpc-default-security-group-no-traffic"

disabled = false

case "Default security group resource with traffic rules" {
    path = "cases/default-security-groups-with-traffic-rules"
    expectation {
        result = false
    }
}

case "Non default security group resource with traffic rules" {
    path = "cases/non-default-security-group-with-traffic-rules"
    expectation {
        result = true
    }
}

case "Default security group resources with traffic rules inside nested module" {
    path = "cases/security-group-rules-referencing-default-security-group"
    expectation {
        result = false
    }
}