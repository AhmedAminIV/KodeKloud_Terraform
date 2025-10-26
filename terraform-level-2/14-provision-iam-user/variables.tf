variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "KKE_USER_NAME" {
  description = "IAM user name"
  type = string
}