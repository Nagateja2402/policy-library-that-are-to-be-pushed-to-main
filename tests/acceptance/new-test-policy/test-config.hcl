name = "new-test-policy"
	
disabled = false

case "new-random-test-case" {
	path = "./cases/new-random-test-case"
	expectation {
		result = false
	}
}


case "new-test-case-1" {
	path = "./cases/new-test-case-1"
	expectation {
		result = true
	}
}