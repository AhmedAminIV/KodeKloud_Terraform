variable "KKE_S3_BUCKET_NAME" {
  description = "Name of the S3 bucket for Firehose delivery"
  type        = string
  default     = "datacenter-stream-bucket-6147"
}

variable "KKE_FIREHOSE_STREAM_NAME" {
  description = "Name of the Firehose delivery stream"
  type        = string
  default     = "datacenter-firehose-stream"
}

variable "KKE_FIREHOSE_ROLE_NAME" {
  description = "IAM Role name for Firehose"
  type        = string
  default     = "firehose-sts-role"
}
