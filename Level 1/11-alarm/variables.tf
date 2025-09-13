variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}


variable "alarm_name" {
  description = "alarm name"
  type        = string
  default     = "datacenter-alarm"
}

variable "evaluation_period" {
  description = "number of evaluation period"
  type        = number
  default     = 1
}

variable "period" {
  description = "the single evaluation period in seconds"
  type        = number
  default     = 300
}

variable "metric_threshold" {
  description = "the upper threshold percentage when to trigger the alarm"
  type        = number
  default     = 80
}


variable "metric_name" {
  description = "which metric to observe"
  type        = string
  default     = "CPUUtilization"
}

variable "alarm_desc" {
  description = "description for the alarm"
  type        = string
  default     = "This metric monitors ec2 cpu utilization"
}