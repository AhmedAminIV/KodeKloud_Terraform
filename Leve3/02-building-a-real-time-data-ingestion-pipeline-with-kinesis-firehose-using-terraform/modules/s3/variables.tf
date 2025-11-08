variable "bucket_name" {
  description = "AWS unique bucket name"
  type = string
}

variable "enable_versioning" {
  description = "enable version for the bucket or not"
  type = bool
  default = false
}