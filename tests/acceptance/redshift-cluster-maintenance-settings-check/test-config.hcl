name = "redshift-cluster-maintenance-settings-check"

disabled = false

case "Redshift Cluster with No Version Upgrade Attribute" {
    path = "./cases/redshift-cluster-with-no-version-upgrade-attribute"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Version Upgrade Disabled" {
    path = "./cases/redshift-cluster-with-version-upgrade-disabled"
    expectation {
        result = false
    }
}

case "Redshift Cluster with Version Upgrade Enabled" {
    path = "./cases/redshift-cluster-with-version-upgrade-enabled"
    expectation {
        result = true
    }
}

case "Redshift Cluster with Version Upgrade Enabled Nested" {
    path = "./cases/redshift-cluster-with-version-upgrade-enabled-nested"
    expectation {
        result = true
    }
}
