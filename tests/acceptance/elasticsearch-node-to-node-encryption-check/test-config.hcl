name = "elasticsearch-node-to-node-encryption-check"
	
disabled = false

case "elasticsearch-node-to-node-encryption-attribute-not-present" {
	path = "./cases/elasticsearch-node-to-node-encryption-attribute-not-present"
	expectation {
		result = false
	}
}

case "elasticsearch-node-to-node-encryption-disabled" {
	path = "./cases/elasticsearch-node-to-node-encryption-disabled"
	expectation {
		result = false
	}
}

case "elasticsearch-node-to-node-encryption-enabled" {
	path = "./cases/elasticsearch-node-to-node-encryption-enabled"
	expectation {
		result = true
	}
}

case "elasticsearch-node-to-node-encryption-enabled-nested" {
	path = "./cases/elasticsearch-node-to-node-encryption-enabled-nested"
	expectation {
		result = true
	}
}