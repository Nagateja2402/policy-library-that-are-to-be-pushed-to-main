import "module" "report" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/report/report.sentinel"
}

// Replace the source with the appropriate plugin binary
// based on the environment where you run policies.
import "plugin" "tfresources" {
  source = "./plugins/linux/amd64/sentinel-plugin-tfresources"
}

policy "redshift-cluster-should-be-encrypted-at-transit" {
 source = "./policies/redshift-cluster-should-be-encrypted-at-transit.sentinel"
  enforcement_level = "advisory"
}
