variable "kinesis_stream_name" {
  type        = string
  description = "Name of the Kinesis Data Stream"
}

variable "shard_count" {
  type        = number
  description = "Number of shards in the stream"
  default     = 1
}

variable "alarm_name" {
  type        = string
  description = "Name of the CloudWatch Alarm"
}

variable "threshold" {
  type        = number
  description = "Threshold for triggering the alarm"
  default     = 1
}
