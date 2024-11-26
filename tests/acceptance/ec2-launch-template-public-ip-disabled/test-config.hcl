name = "ec2-launch-template-public-ip-disabled"
	
disabled = false

case "-ec2-launch-template-with-multiple-network-interfaces" {
	path = "./cases/-ec2-launch-template-with-multiple-network-interfaces"
	expectation {
		result = false
	}
}

case "-ec2-launch-template-with-network-interfaces-attribute-not-present" {
	path = "./cases/-ec2-launch-template-with-network-interfaces-attribute-not-present"
	expectation {
		result = false
	}
}

case "-ec2-launch-template-with-public-ip-attribute-not-present" {
	path = "./cases/-ec2-launch-template-with-public-ip-attribute-not-present"
	expectation {
		result = false
	}
}

case "-ec2-launch-template-with-public-ip-enabled" {
	path = "./cases/-ec2-launch-template-with-public-ip-enabled"
	expectation {
		result = false
	}
}

case "-ec2-launch-template-with-public-ip-disabled" {
	path = "./cases/-ec2-launch-template-with-public-ip-disabled"
	expectation {
		result = true
	}
}