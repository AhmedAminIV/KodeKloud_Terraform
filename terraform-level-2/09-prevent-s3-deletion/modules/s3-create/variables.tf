variable "bucket_name" {
  description = "AWS S3 bucket name"
  type = string
}

variable "environment" {
  description = "environment where this bucket belongs to i.e, test, dev, prod"
  type = string
}