variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "stream_name" {
  description = "Kinesis data stream name"
  type = string
  default = "nautilus-stream"
}

variable "stream_shard_count" {
  description = "Kinesis data stream number of shards"
  type = number
  default = 1
}