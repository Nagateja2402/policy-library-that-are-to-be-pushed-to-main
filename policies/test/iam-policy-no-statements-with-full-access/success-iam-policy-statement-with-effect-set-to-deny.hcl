mock "tfstate/v2" {
	module {
		source = "./mocks/policy-success-iam-policy-statement-with-effect-set-to-deny/mock-tfstate-v2.sentinel"
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