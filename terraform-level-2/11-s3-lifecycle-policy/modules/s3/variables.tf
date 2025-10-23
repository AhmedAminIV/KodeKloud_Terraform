variable "enable_versioning" {
  description = "Enable versioning for objects or not"
  type        = bool
  default     = false
}

variable "bucket_name" {
  description = "S3 Bucket name"
  type        = string
}

variable "create_lifecycle" {
  description = "create a lifecycle for objects in s3 or not"
  type        = bool
  default     = false
}

variable "lifecycle_rule_id" {
  description = "S3 lifecycle policy rule name (id)"
  type        = string
}

variable "s3_IA_transition_after" {
  description = "Number of days before transition to S3 IA tier"
  type        = number
  default     = 30
}

variable "s3_object_expiration" {
  description = "Number of days before objects are deleted forever"
  type        = number
  default     = 365
}