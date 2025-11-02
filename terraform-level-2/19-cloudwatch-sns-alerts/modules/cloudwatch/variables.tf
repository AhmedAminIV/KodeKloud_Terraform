variable "alarm_name" {
  description = "Name for the cloud watch alarm"
  type        = string
}

variable "threshold" {
  description = "threshold which should trigger the alarm if the value was exceeded"
  type        = number
}

variable "sns_arn" {
  description = "arn of the sns topic"
  type        = string
}
