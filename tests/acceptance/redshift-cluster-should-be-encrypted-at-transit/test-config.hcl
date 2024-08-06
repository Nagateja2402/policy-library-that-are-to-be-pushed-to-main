name = "redshift-cluster-public-access-check"

disabled = false

case "Redshift Cluster with no Publicly Accessible Attribute" {
    path = "./cases/redshift-cluster-with-no-publicly-accessible-attribute"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Publicly Accessible Attribute set to False" {
    path = "./cases/redshift-cluster-with-publicly-accessible-attribute-set-to-false"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Publicly Accessible Attribute set to False Nested" {
    path = "./cases/redshift-cluster-with-publicly-accessible-attribute-set-to-false-nested"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Publicly Accessible Attribute set to True" {
    path = "./cases/redshift-cluster-with-publicly-accessible-attribute-set-to-true"
    expectation {
        result = false
    }
}
