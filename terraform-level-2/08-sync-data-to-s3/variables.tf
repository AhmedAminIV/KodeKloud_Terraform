variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "KKE_BUCKET" {
  description = "The name for the new S3 bucket"
  type        = string
}

variable "source_bucket" {
  description = "old bucket to sync data from"
  type        = string
}