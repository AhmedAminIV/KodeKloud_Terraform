variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "stack_name" {
  description = "Cloudformation stack name"
  type        = string
}

variable "KKE_DYNAMODB_TABLE_NAME" {
  description = "DynamoDb table name"
  type        = string
}