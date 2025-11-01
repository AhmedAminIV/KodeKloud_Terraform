variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AWS AMI id for the EC2 Instances"
  type = string
}

variable "instance_type" {
  description = "Instance type"
  type = string
}

variable "instance_name" {
  description = "Name tag for the new EC2 Instance"
  type = string
}

variable "alarm_name" {
  description = "Name for the cloud watch alarm"
  type = string
}

variable "threshold" {
  description = "threshold which should trigger the alarm if the value was exceeded"
  type = number
  default = 90
}

variable "topic_name" {
  description = "Name of the SNS topic"
  type        = string
}
