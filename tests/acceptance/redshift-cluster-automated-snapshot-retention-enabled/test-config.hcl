name = "redshift-cluster-automated-snapshot-retention-enabled"

disabled = false

case "Redshift Cluster with Automated Snapshot Retention Disabled" {
    path = "./cases/redshift-cluster-with-automated-snapshot-retention-disabled"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Automated Snapshot Retention Enabled" {
    path = "./cases/redshift-cluster-with-automated-snapshot-retention-enabled"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Automated Snapshot Retention Enabled Nested" {
    path = "./cases/redshift-cluster-with-automated-snapshot-retention-enabled-nested"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Automated Snapshot Retention set to Lower Limit" {
    path = "./cases/redshift-cluster-with-automated-snapshot-retention-set-to-lower-limit"
    expectation {
        result = false
    }
}

case "Redshift Cluster with no Automated Snapshot Retention Attribute" {
    path = "./cases/redshift-cluster-with-no-automated-snapshot-retention-attribute"
    expectation {
        result = false
    }
}
