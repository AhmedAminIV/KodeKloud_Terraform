variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 Instance"
  type        = string
}

variable "eip_name" {
  description = "Elastic Ip Name tag"
  type        = string
}

