variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Private s3 Bucket name"
  type        = string
  default     = "datacenter-s3-29687"
}