name = "elasticsearch-encrypted-at-rest"
	
disabled = false

case "elasticsearch-with-encrypted-at-rest-attribute-not-present" {
	path = "./cases/elasticsearch-with-encrypted-at-rest-attribute-not-present"
	expectation {
		result = false
	}
}

case "elasticsearch-with-encrypted-at-rest-disabled" {
	path = "./cases/elasticsearch-with-encrypted-at-rest-disabled"
	expectation {
		result = false
	}
}

case "elasticsearch-with-encrypted-at-rest-enabled" {
	path = "./cases/elasticsearch-with-encrypted-at-rest-enabled"
	expectation {
		result = true
	}
}

case "elasticsearch-with-encrypted-at-rest-enabled-nested" {
	path = "./cases/elasticsearch-with-encrypted-at-rest-enabled-nested"
	expectation {
		result = true
	}
}