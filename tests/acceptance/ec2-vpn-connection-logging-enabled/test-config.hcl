name = "ec2-vpn-connection-logging-enabled"
	
disabled = false

case "ec2-vpn-connection-with-logging-enabled-on-both-ends" {
	path = "./cases/ec2-vpn-connection-with-logging-enabled-on-both-ends"
	expectation {
		result = true
	}
}

case "ec2-vpn-connection-with-logging-enabled-only-on-one-end" {
	path = "./cases/ec2-vpn-connection-with-logging-enabled-only-on-one-end"
	expectation {
		result = false
	}
}

case "ec2-vpn-connection-with-log-enabled-not-present" {
	path = "./cases/ec2-vpn-connection-with-log-enabled-not-present"
	expectation {
		result = false
	}
}

case "ec2-vpn-connection-with-cloudwatch-options-not-present" {
	path = "./cases/ec2-vpn-connection-with-cloudwatch-options-not-present"
	expectation {
		result = false
	}
}

case "ec2-vpn-connection-with-only-one-tunnel-attribute" {
	path = "./cases/ec2-vpn-connection-with-only-one-tunnel-attribute"
	expectation {
		result = false
	}
}