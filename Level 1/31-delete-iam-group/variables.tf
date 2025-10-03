variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "group_name" {
  description = "AWS IAM group name"
  type = string
  default = "iamgroup_ravi"
}