variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "AWS vpc CIDR range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "AWS vpc tag Name"
  type        = string
  default     = "nautilus-vpc"
}
