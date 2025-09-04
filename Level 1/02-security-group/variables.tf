variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "datacenter-sg"
}

variable "sg_description" {
  description = "Description for the security group"
  type        = string
  default     = "Security group for Nautilus App Servers"
}

variable "cidr_anywhere" {
  description = "CIDR range for public access"
  type        = string
  default     = "0.0.0.0/0"
}

