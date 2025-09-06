variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "AWS vpc CIDR range"
  type        = string
  default     = "192.168.0.0/24"
}

variable "vpc_name" {
  description = "AWS vpc tag Name"
  type        = string
  default     = "datacenter-vpc"
}
