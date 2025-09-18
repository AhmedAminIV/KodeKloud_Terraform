variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "billing_mode" {
  description = "DynamoDB table billing mode"
  type = string
  default = "PAY_PER_REQUEST"
}
variable "db_name" {
  description = "DynamoDB table name"
  type = string
  default = "datacenter-users"
}

variable "hash_key" {
  description = "DynamoDB table primary key"
  type = string
  default = "datacenter_id"
}

variable "hash_key_type" {
  description = "Type of the primary key"
  type = string
  default = "S"
}