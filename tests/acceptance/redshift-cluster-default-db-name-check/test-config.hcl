name = "redshift-cluster-default-db-name-check"

disabled = false

case "Redshift Cluster with Default DB Name" {
    path = "./cases/redshift-cluster-with-default-db-name"
    expectation {
        result = false
    }
}

case "Redshift Cluster with no DB Name Attribute" {
    path = "./cases/redshift-cluster-with-no-db-name-attribute"
    expectation {
        result = false
    }
}

case "Redshift Cluster without Default DB Name" {
    path = "./cases/redshift-cluster-without-default-db-name"
    expectation {
        result = true
    }
}

case "Redshift Cluster without Default DB Name Nested" {
    path = "./cases/redshift-cluster-without-default-db-name-nested"
    expectation {
        result = true
    }
}
