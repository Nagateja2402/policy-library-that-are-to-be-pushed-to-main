name = "ec2-launch-template-imdsv2-check"
	
disabled = false

case "ec2-launch-template-with-metadata-options-not-present" {
	path = "./cases/ec2-launch-template-with-metadata-options-not-present"
	expectation {
		result = false
	}
}

case "ec2-launch-template-with-http-token-attribute-not-present" {
	path = "./cases/ec2-launch-template-with-http-token-attribute-not-present"
	expectation {
		result = false
	}
}

case "ec2-launch-template-with-http-token-attribute-optional" {
	path = "./cases/ec2-launch-template-with-http-token-attribute-optional"
	expectation {
		result = false
	}
}

case "ec2-launch-template-with-http-token-attribute-required" {
	path = "./cases/ec2-launch-template-with-http-token-attribute-required"
	expectation {
		result = true
	}
}

case "ec2-launch-template-with-http-token-attribute-required-nested" {
	path = "./cases/ec2-launch-template-with-http-token-attribute-required-nested"
	expectation {
		result = true
	}
}