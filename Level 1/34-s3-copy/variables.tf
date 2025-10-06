  variable "aws_region" {
    description = "AWS region"
    type        = string
    default     = "us-east-1"
  }

  variable "bucket_name" {
    description = "AWS S3 Bucket name"
    type = string
    default = "datacenter-cp-1678"
  }

  variable "object_path" {
    description = "object path on host or source"
    type = string
    default = "/tmp/datacenter.txt"
  }

  variable "object_name" {
    description = "object key which is the name of the object uploaded in the s3 bucket"
    type = string
    default = "datacenter.txt"
  }