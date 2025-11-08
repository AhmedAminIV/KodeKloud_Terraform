variable "stream_name" {
  description = "aws kinesis stream name"
  type = string
}

variable "role_arn" {
  description = "role arn to be assumed by kinesis data stream"
  type = string
}

variable "bucket_arn" {
  description = "bucket arn where kinesis data stream will write objects"
  type = string
}

variable "buffering_size" {
  description = "kinesis data stream buffering size in MB"
  type = number
  default = 5
}

variable "buffering_interval" {
  description = "kinesis data stream buffering duration in seconds"
  type = number
  default = 300
}