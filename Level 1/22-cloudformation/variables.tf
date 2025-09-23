variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "s3 bucket name with version enabled"
  type = string
  default = "datacenter-bucket-24867"
}
variable "stack_name" {
  description = "cloudformation stack name"
  type = string
  default = "datacenter-stack"
}