name = "redshift-cluster-default-admin-check"

disabled = false

case "Redshift Cluster with Default Admin Username" {
    path = "./cases/redshift-cluster-with-default-admin-username"
    expectation {
        result = false
    }
}

case "Redshift Cluster with no Master Username Attribute" {
    path = "./cases/redshift-cluster-with-no-master-username-attribute"
    expectation {
        result = false
    }
}

case "Redshift Cluster without Default Admin Username" {
    path = "./cases/redshift-cluster-without-default-admin-username"
    expectation {
        result = true
    }
}

case "Redshift Cluster without Default Admin Username Nested" {
    path = "./cases/redshift-cluster-without-default-admin-username-nested"
    expectation {
        result = true
    }
}
