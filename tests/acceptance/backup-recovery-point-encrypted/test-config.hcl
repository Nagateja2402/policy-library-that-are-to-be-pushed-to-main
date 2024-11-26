name = "backup-recovery-point-encrypted"
	
disabled = false

case "backup-recovery-point-encrypted-not-present" {
	path = "./cases/backup-recovery-point-encrypted-not-present"
	expectation {
		result = false
	}
}

case "backup-recovery-point-encrypted-present" {
	path = "./cases/backup-recovery-point-encrypted-present"
	expectation {
		result = true
	}
}

case "backup-recovery-point-encrypted-present-nested" {
	path = "./cases/backup-recovery-point-encrypted-present-nested"
	expectation {
		result = true
	}
}