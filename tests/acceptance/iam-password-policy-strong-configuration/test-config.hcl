name = "iam-password-policy-strong-configuration"
	
disabled = false

case "iam-policy-password-with-strong-configuration" {
	path = "./cases/iam-policy-password-with-strong-configuration"
	expectation {
		result = true
	}
}

case "iam-policy-password-with-uppercase-false" {
	path = "./cases/iam-policy-password-with-uppercase-false"
	expectation {
		result = false
	}
}

case "iam-policy-password-with-lowercase-false" {
	path = "./cases/iam-policy-password-with-lowercase-false"
	expectation {
		result = false
	}
}

case "iam-policy-password-with-numbers-false" {
	path = "./cases/iam-policy-password-with-numbers-false"
	expectation {
		result = false
	}
}

case "iam-policy-password-with-symbols-false" {
	path = "./cases/iam-policy-password-with-symbols-false"
	expectation {
		result = false
	}
}

case "iam-policy-password-with-min-password-length" {
	path = "./cases/iam-policy-password-with-min-password-length"
	expectation {
		result = false
	}
}

case "iam-policy-password-with-max-password-age-false" {
	path = "./cases/iam-policy-password-with-max-password-age-false"
	expectation {
		result = false
	}
}

case "iam-policy-password-with-password-reuse-prevention-false" {
	path = "./cases/iam-policy-password-with-password-reuse-prevention-false"
	expectation {
		result = false
	}
}