variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "KKE_INSTANCE_COUNT" {
  type        = number
  description = "Number of instances to create"
}

variable "KKE_INSTANCE_TYPE" {
  type        = string
  description = "Type of EC2 instance"
}

variable "KKE_KEY_NAME" {
  type        = string
  description = "Key name to access EC2"
}

variable "KKE_INSTANCE_PREFIX" {
  type        = string
  description = "Prefix for naming instances"
}
