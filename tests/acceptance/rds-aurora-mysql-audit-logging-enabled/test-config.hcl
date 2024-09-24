name = "rds-aurora-mysql-audit-logging-enabled"

disabled = false

case "Aurora MySQL Cluster with Cloudwatch containing Audit" {
    path = "./cases/aurora-mysql-cluster-with-cloudwatch-containing-audit"
    expectation {
        result = true
    }
}

case "Aurora MySQL Cluster with Cloudwatch containing Audit Nested" {
    path = "./cases/aurora-mysql-cluster-with-cloudwatch-containing-audit-nested"
    expectation {
        result = true
    }
}

case "Aurora MySQL Cluster with Cloudwatch not containing Audit" {
    path = "./cases/aurora-mysql-cluster-with-cloudwatch-not-containing-audit"
    expectation {
        result = false
    }
}

case "Aurora MySQL Cluster without Cloudwatch Attribute" {
    path = "./cases/aurora-mysql-cluster-without-cloudwatch-attribute"
    expectation {
        result = false
    }
}

case "Aurora PostgreSQL Cluster with Cloudwatch containing Audit" {
    path = "./cases/aurora-postgresql-cluster-with-cloudwatch-containing-audit"
    expectation {
        result = true
    }
}

case "Aurora PostgreSQL Cluster with Cloudwatch not containing Audit" {
    path = "./cases/aurora-postgresql-cluster-with-cloudwatch-not-containing-audit"
    expectation {
        result = true
    }
}
