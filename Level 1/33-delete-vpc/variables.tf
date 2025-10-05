variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "AWS VPC name"
  type = string
  default = "datacenter-vpc"
}

variable "vpc_cidr" {
  description = "AWS datacenter VPC cidr range"
  type = string
  default = "10.0.0.0/16"
}