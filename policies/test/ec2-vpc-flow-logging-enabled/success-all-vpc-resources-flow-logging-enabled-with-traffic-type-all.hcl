mock "tfconfig/v2" {
  module {
    source = "./mocks/policy-success-all-vpc-resources-flow-logging-enabled-with-traffic-type-all/mock-tfconfig-v2.sentinel"
  }
}

import "plugin" "tfresources" {
	source = "../../../plugins/darwin/arm64/sentinel-plugin-tfresources"
}

mock "report" {
  module {
    source = "../../../modules/mocks/report/report.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}