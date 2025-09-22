variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "datacenter_group_name" {
  description = "cloudwatch datacenter log group name"
  type = string
  default = "datacenter-log-group"
}

variable "log_stream_name" {
  description = "cloudwatch datacenter log stream name"
  type = string
  default = "datacenter-log-stream"
}

variable "log_retention_days" {
  description = "Number of days to retain logs"
  type        = number
  default     = 7
}