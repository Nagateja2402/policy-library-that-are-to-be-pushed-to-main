import "module" "report" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/report/report.sentinel"
}

// Replace the source with the appropriate plugin binary
// based on the environment where you run policies.
import "plugin" "tfresources" {
  source = "./plugins/linux/amd64/sentinel-plugin-tfresources"
}

policy "redshift-cluster-default-db-name-check" {
 source = "./policies/redshift-cluster-default-db-name-check.sentinel"
 enforcement_level = "advisory"
}

policy "redshift-cluster-should-be-encrypted-at-rest" {
  source = "./policies/redshift-cluster-should-be-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}

policy "aws-macie-status-should-be-enabled" {
  source = "./policies/aws-macie-status-should-be-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "mq-auto-minor-version-upgrade-enabled" {
  source = "./policies/mq-auto-minor-version-upgrade-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "msk-in-cluster-node-require-encrypted-in-transit" {
  source = "./policies/msk-in-cluster-node-require-encrypted-in-transit.sentinel"
  enforcement_level = "advisory"
}

policy "redshift-cluster-unrestricted-port-access-check" {
  source = "./policies/redshift-cluster-unrestricted-port-access-check.sentinel"
  enforcement_level = "advisory"
}

policy "rds-cluster-encrypted-at-rest" {
  source = "./policies/rds-cluster-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}
policy "rds-cluster-default-admin-check" {
  source = "./policies/rds-cluster-default-admin-check.sentinel"
  enforcement_level = "advisory"
}
