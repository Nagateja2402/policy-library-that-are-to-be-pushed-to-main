name = "rds-cluster-encrypted-at-rest"

disabled = false

case "RDS Cluster with No Storage Encrypted Attribute" {
    path = "./cases/rds-cluster-with-no-storage-encrypted-attribute"
    expectation {
        result = false
    }
}

case "RDS Cluster with Storage Encrypted False" {
    path = "./cases/rds-cluster-with-storage-encrypted-false"
    expectation {
        result = false
    }
}

case "RDS Cluster with Storage Encrypted True" {
    path = "./cases/rds-cluster-with-storage-encrypted-true"
    expectation {
        result = true
    }
}

case "RDS Cluster with Storage Encrypted True Nested" {
    path = "./cases/rds-cluster-with-storage-encrypted-true-nested"
    expectation {
        result = true
    }
}
