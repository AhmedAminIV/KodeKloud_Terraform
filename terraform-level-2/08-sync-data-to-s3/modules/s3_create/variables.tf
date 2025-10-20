variable "acl" {
  description = "ACL for the bucket"
  type        = string
  default     = "private"
}

variable "bucket_name" {
  description = "Name of the new S3 bucket"
  type        = string
}
