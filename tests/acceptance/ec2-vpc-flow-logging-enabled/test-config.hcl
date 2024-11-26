name = "ec2-vpc-flow-logging-enabled"

disabled = false

case "VPC with flow log enabled. Both present in root module" {
    path = "cases/vpc-with-flow-log-enabled"
    expectation {
        result = true
    }
}

case "VPC with flow log enabled but with invalid traffic type" {
    path = "cases/vpc-with-flow-log-enabled-invalid-traffic-type"
    expectation {
        result = false
    }
}

case "VPC without flow log enabled" {
    path = "cases/vpc-without-flow-log"
    expectation {
        result = false
    }
}

case "Default VPC without flow log enabled" {
    path = "cases/default-vpc-without-flow-log"
    expectation {
        result = false
    }
}

case "VPC with flow log enabled. Both present in nested modules" {
    path = "cases/vpc-with-flow-log-in-nested-modules"
    expectation {
        result = true
    }
}

case "VPC and flow log present in different modules" {
    path = "cases/vpc-with-flow-log-both-in-different-modules"
    expectation {
        result = false
    }
}