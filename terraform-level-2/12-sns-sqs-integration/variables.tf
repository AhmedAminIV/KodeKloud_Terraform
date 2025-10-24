variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "sns_topic_name" {
  description = "AWS SNS topic name"
  type = string
}

variable "sqs_queue_name" {
  description = "SQS Queue name"
  type = string
}

