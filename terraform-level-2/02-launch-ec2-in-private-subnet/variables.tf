variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "KKE_VPC_CIDR" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "KKE_SUBNET_CIDR" {
  description = "CIDR block for the Subnet"
  type        = string
}