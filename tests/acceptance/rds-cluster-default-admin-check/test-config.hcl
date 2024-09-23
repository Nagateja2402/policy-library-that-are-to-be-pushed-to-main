name = "rds-cluster-default-admin-check"

disabled = false

case "RDS Cluster with Default Master Username" {
    path = "./cases/rds-cluster-with-default-master-username"
    expectation {
        result = false
    }
}

case "RDS Cluster with No Master Username Attribute" {
    path = "./cases/rds-cluster-with-no-master-username-attribute"
    expectation {
        result = false
    }
}

case "RDS Cluster without Default Master Username" {
    path = "./cases/rds-cluster-without-default-master-username"
    expectation {
        result = true
    }
}

case "RDS Cluster without Default Master Username Nested" {
    path = "./cases/rds-cluster-without-default-master-username-nested"
    expectation {
        result = true
    }
}
