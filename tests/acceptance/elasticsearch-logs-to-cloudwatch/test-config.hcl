name = "elasticsearch-logs-to-cloudwatch"
	
disabled = false

case "elasticsearch-with-log-publising-options-attribute-not-present" {
	path = "./cases/elasticsearch-with-log-publising-options-attribute-not-present"
	expectation {
		result = false
	}
}

case "elasticsearch-with-enabled-attribute-not-present" {
	path = "./cases/elasticsearch-with-enabled-attribute-not-present"
	expectation {
		result = true
	}
}

case "elasticsearch-logs-to-cloudwatch-disabled" {
	path = "./cases/elasticsearch-logs-to-cloudwatch-disabled"
	expectation {
		result = false
	}
}

case "elasticsearch-logs-to-cloudwatch-enabled" {
	path = "./cases/elasticsearch-logs-to-cloudwatch-enabled"
	expectation {
		result = true
	}
}

case "elasticsearch-logs-to-cloudwatch-enabled-nested" {
	path = "./cases/elasticsearch-logs-to-cloudwatch-enabled-nested"
	expectation {
		result = true
	}
}