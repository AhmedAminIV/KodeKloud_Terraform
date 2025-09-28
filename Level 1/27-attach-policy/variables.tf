variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "user_name" {
  description = "IAM user name"
  type = string
  default = "iamuser_jim"
}

variable "policy_name" {
  description = "IAM policy name"
  type = string
  default = "iampolicy_jim"
}

variable "policy_desc" {
  description = "IAM policy description"
  type = string
  default = "IAM policy allowing EC2 read actions for jim"
}

variable "attach_name" {
  description = "IAM policy attachment name"
  type = string
  default = "jim-attachment"
}
