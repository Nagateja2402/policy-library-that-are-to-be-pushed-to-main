provider "aws" {
  region = "us-east-1"  # Replace with your preferred AWS region
}

# SNS Topic to receive RDS event notifications
resource "aws_sns_topic" "rds_event_notifications" {
  name = "rds-db-security-group-event-notifications"
}

# SNS Topic Subscription (Example: Email)
resource "aws_sns_topic_subscription" "email_notification" {
  topic_arn = aws_sns_topic.rds_event_notifications.arn
  protocol  = "email"
  endpoint  = "nagateja590@gmail.com"  # Replace with your email
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name              = "mydb"
  username             = "Nagateja"
  password             = "Nagatejaawsdbinstance"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot = true
}

# RDS Event Subscription for DBSecurityGroup
resource "aws_db_event_subscription" "rds_db_security_group_event" {
  name                = "rds-db-security-group-event-subscription"
  sns_topic       = aws_sns_topic.rds_event_notifications.arn
  source_type         = "db-instance"     # Source type: DBSecurityGroup
  event_categories    = ["failure"]  # Specific event categories
  source_ids          = [aws_db_instance.default.identifier]                      # Applies to all DB Security Groups
  enabled             = true
  # Add tags if necessary
  tags = {
    Name = "rds-db-security-group-event-subscription"
  }
}
