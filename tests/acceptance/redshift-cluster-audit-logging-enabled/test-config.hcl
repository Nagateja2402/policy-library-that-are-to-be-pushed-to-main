name = "redshift-cluster-audit-logging-enabled"

disabled = false

case "Redshift Cluster Referenced to Redshift Logging Resource" {
    path = "./cases/redshift-cluster-referenced-to-redshift-logging-resource"
    expectation {
        result = true
    }
}

case "Redshift Cluster Referenced to Redshift Logging Resource Nested" {
    path = "./cases/redshift-cluster-referenced-to-redshift-logging-resource-nested"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Logging Attribute Disabled" {
    path = "./cases/redshift-cluster-with-logging-attribute-disabled"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Logging Attribute Enabled" {
    path = "./cases/redshift-cluster-with-logging-attribute-enabled"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Logging Attribute Enabled Nested" {
    path = "./cases/redshift-cluster-with-logging-attribute-enabled-nested"
    expectation {
        result = true
    }
}

case "Redshift Cluster with No Logging Attribute" {
    path = "./cases/redshift-cluster-with-no-logging-attribute"
    expectation {
        result = false
    }
}
