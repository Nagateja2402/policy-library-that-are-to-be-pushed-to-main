name = "ec2-network-acl"

disabled = false

case "EC2 Network ACL complaint. Both resources(aws_network_acl_rule, aws_network_acl) present in root module" {
  path = "cases/all-resources-complaint"
  expectation {
    result = true
  }
}

case "EC2 Network ACL complaint. Both resources(aws_network_acl_rule, aws_network_acl) present in nested module" {
  path = "cases/all-resources-compliant-nested-modules"
  expectation {
    result = true
  }
}

case "EC2 Network ACL not compliant for resource aws_network_acl" {
  path = "cases/network-acl-resources-not-compliant"
  expectation {
    result = false
  }
}

case "EC2 Network ACL not compliant for resource aws_network_acl_rule" {
  path = "cases/network-acl-rule-resources-not-compliant"
  expectation {
    result = false
  }
}
