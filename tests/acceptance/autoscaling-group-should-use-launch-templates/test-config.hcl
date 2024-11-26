name = "autoscaling-group-should-use-launch-templates"
	
disabled = false

case "autoscaling-group-not-using-launch-template" {
	path = "./cases/autoscaling-group-not-using-launch-template"
	expectation {
		result = false
	}
}

case "autoscaling-group-using-launch-template" {
	path = "./cases/autoscaling-group-using-launch-template"
	expectation {
		result = true
	}
}

case "autoscaling-group-using-mixed-instances-policy" {
	path = "./cases/autoscaling-group-using-mixed-instances-policy"
	expectation {
		result = true
	}
}

case "autoscaling-group-using-launch-template-nested" {
	path = "./cases/autoscaling-group-using-launch-template-nested"
	expectation {
		result = true
	}
}