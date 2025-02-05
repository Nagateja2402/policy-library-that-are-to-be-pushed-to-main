import "module" "report" {
  source = "./modules/mocks/report/report.sentinel"
}

import "plugin" "tfresources" {
  source = "./plugins/darwin/arm64/sentinel-plugin-tfresources"
}

policy "iam-no-policies-attached-to-users" {
  source = "./policies/iam-no-policies-attached-to-users.sentinel"
  enforcement_level = "advisory"
}

policy "iam-password-policy-strong-configuration" {
  source = "./policies/iam-password-policy-strong-configuration.sentinel"
  enforcement_level = "advisory"
}

policy "iam-policy-no-statements-with-full-access" {
  source = "./policies/iam-policy-no-statements-with-full-access.sentinel"
  enforcement_level = "advisory"
}
