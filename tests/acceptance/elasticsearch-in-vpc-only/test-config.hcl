name = "elasticsearch-in-vpc-only"
	
disabled = false

case "elasticsearch-domain-with-subnet-ids-attribute-empty" {
	path = "./cases/elasticsearch-domain-with-subnet-ids-attribute-empty"
	expectation {
		result = false
	}
}

case "elasticsearch-domain-with-subnet-ids-attribute-not-present" {
	path = "./cases/elasticsearch-domain-with-subnet-ids-attribute-not-present"
	expectation {
		result = false
	}
}

case "elasticsearch-domain-with-vpc-options-attribute-not-present" {
	path = "./cases/elasticsearch-domain-with-vpc-options-attribute-not-present"
	expectation {
		result = false
	}
}

case "elasticsearch-domain-are-indide-vpc" {
	path = "./cases/elasticsearch-domain-are-indide-vpc"
	expectation {
		result = true
	}
}