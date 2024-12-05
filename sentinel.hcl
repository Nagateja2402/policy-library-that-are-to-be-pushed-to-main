import "module" "report" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/report/report.sentinel"
}

import "plugin" "tfresources" {
  source = "./plugins/darwin/arm64/sentinel-plugin-tfresources"
}

policy "autoscaling-group-should-use-launch-templates" {
  source = "./policies/autoscaling-group-should-use-launch-templates.sentinel"
  enforcement_level = "advisory"
}

policy "backup-recovery-point-encrypted" {
  source = "./policies/backup-recovery-point-encrypted.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-client-vpn-connection-log-enabled" {
  source = "./policies/ec2-client-vpn-connection-log-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-ebs-encryption-enabled" {
  source = "./policies/ec2-ebs-encryption-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-launch-template-imdsv2-check" {
  source = "./policies/ec2-launch-template-imdsv2-check.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-launch-template-public-ip-disabled" {
  source = "./policies/ec2-launch-template-public-ip-disabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-metadata-imdsv2-required" {
  source = "./policies/ec2-metadata-imdsv2-required.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-network-acl" {
  source = "./policies/ec2-network-acl.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-security-group-ingress-traffic-restriction-to-common-ports" {
  source = "./policies/ec2-security-group-ingress-traffic-restriction-to-common-ports.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpc-default-security-group-no-traffic" {
  source = "./policies/ec2-vpc-default-security-group-no-traffic.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpc-flow-logging-enabled" {
  source = "./policies/ec2-vpc-flow-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-vpn-connection-logging-enabled" {
  source = "./policies/ec2-vpn-connection-logging-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-encrypted-at-rest" {
  source = "./policies/elasticsearch-encrypted-at-rest.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-in-vpc-only" {
  source = "./policies/elasticsearch-in-vpc-only.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-logs-to-cloudwatch" {
  source = "./policies/elasticsearch-logs-to-cloudwatch.sentinel"
  enforcement_level = "advisory"
}

policy "elasticsearch-node-to-node-encryption-check" {
  source = "./policies/elasticsearch-node-to-node-encryption-check.sentinel"
  enforcement_level = "advisory"
}

policy "new-test-policy" {
  source = "./new-test-policy.sentinel"
  enforcement_level = "advisory"
}