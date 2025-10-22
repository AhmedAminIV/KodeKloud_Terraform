variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "KKE_BUCKET_NAME" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "KKE_POLICY_NAME" {
  description = "Name of the IAM policy"
  type        = string
}

variable "KKE_ROLE_NAME" {
  description = "Name of the IAM role"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 Instance"
  type        = string
}