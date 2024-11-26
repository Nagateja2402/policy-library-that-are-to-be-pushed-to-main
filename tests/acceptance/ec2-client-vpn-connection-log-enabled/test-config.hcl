name = "ec2-client-vpn-connection-log-enabled"
	
disabled = false

case "ec2-client-vpn-connection-with-logging-enabled" {
	path = "./cases/ec2-client-vpn-connection-with-logging-enabled"
	expectation {
		result = true
	}
}

case "ec2-client-vpn-connection-with-logging-disabled" {
	path = "./cases/ec2-client-vpn-connection-with-logging-disabled"
	expectation {
		result = false
	}
}

case "ec2-client-vpn-connection-with-logging-enabled-nested" {
	path = "./cases/ec2-client-vpn-connection-with-logging-enabled-nested"
	expectation {
		result = true
	}
}

case "ec2-client-vpn-connection-with-multiple-resources" {
	path = "./cases/ec2-client-vpn-connection-with-multiple-resources"
	expectation {
		result = false
	}
}