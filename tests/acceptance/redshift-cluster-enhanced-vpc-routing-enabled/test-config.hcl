name = "redshift-cluster-enhanced-vpc-routing-enabled"

disabled = false

case "Redshift Cluster with No Enhanced VPC Routing Attribute" {
    path = "./cases/redshift-cluster-with-no-enhanced-vpc-routing-attribute"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Enhanced VPC Routing Disabled" {
    path = "./cases/redshift-cluster-with-enhanced-vpc-routing-disabled"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Enhanced VPC Routing Enabled" {
    path = "./cases/redshift-cluster-with-enhanced-vpc-routing-enabled"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Enhanced VPC Routing Enabled Nested" {
    path = "./cases/redshift-cluster-with-enhanced-vpc-routing-enabled-nested"
    expectation {
        result = true
    }
}
