import "module" "report" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/report/report.sentinel"
}

// Replace the source with the appropriate plugin binary
// based on the environment where you run policies.
import "plugin" "tfresources" {
  source = "./plugins/linux/amd64/sentinel-plugin-tfresources"
}

policy "sagemaker-notebook-instance-root-access-check" {
  source = "./policies/sagemaker-notebook-instance-root-access-check.sentinel"
  enforcement_level = "advisory"
}
