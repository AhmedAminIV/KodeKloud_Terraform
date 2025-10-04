variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "role_name" {
  description = "AWS IAM Role name"
  type = string
  default = "iamrole_yousuf"
}

variable "role_service" {
  description = "role allowed service"
  type = string
  default = "ec2.amazonaws.com"
}