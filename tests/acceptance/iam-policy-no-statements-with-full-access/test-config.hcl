name = "iam-policy-no-statements-with-full-access"
	
disabled = false

case "iam-policy-statement-with-multiple-statements" {
	path = "./cases/iam-policy-statement-with-multiple-statements"
	expectation {
		result = false
	}
}

case "iam-policy-statement-with-full-access" {
	path = "./cases/iam-policy-statement-with-full-access"
	expectation {
		result = false
	}
}

case "iam-policy-no-statement-with-full-access" {
	path = "./cases/iam-policy-no-statement-with-full-access"
	expectation {
		result = true
	}
}

case "iam-policy-statement-with-effect-set-to-deny" {
	path = "./cases/iam-policy-statement-with-effect-set-to-deny"
	expectation {
		result = true
	}
}

case "iam-policy-with-missing-statement-attribute" {
	path = "./cases/iam-policy-with-missing-statement-attribute"
	expectation {
		result = true
	}
}