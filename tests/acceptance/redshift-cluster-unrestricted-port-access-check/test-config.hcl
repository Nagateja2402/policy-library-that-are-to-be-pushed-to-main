name = "redshift-cluster-unrestricted-port-access-check"

disabled = false

case "Redshift Cluster with Security Group Ingress Rule with Unrestricted Port Access" {
    path = "./cases/redshift-cluster-with-security-group-ingress-rule-with-unrestricted-port-access"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Security Group Ingress Rule" {
    path = "./cases/redshift-cluster-with-security-group-ingress-rule"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Security Group Rule with Unrestricted Port Access" {
    path = "./cases/redshift-cluster-with-security-group-rule-with-unrestricted-port-access"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Security Group Rule" {
    path = "./cases/redshift-cluster-with-security-group-ingress-rule"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Security Group with Unrestricted Port Access Nested" {
    path = "./cases/redshift-cluster-with-security-group-with-unrestricted-port-access-nested"
    expectation {
        result = false
    }
}
