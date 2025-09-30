variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "AWS s3 bucket name"
  type = string
  default = "xfusion-bck-2690"
}