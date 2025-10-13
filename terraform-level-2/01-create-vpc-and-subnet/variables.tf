variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "KKE_VPC_NAME" {
  description = "Name for the VPC"
  type        = string
}

variable "KKE_SUBNET_NAME" {
  description = "Name for the Subnet"
  type        = string
}
