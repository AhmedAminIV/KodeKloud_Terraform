variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "sns_topic_name" {
  description = "SNS topic name"
  type = string
  default = "devops-notifications"
}