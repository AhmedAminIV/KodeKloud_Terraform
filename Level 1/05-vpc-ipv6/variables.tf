variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Vpc name tag"
  type        = string
  default     = "xfusion-vpc"
}

variable "cidr_block" {
  description = "ipv4 cidr block range"
  type        = string
  default     = "10.0.0.0/24"
}
