variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "KKE_iamrole" {
  description = "KodeKloud engineer AWS IAM Role for jim"
  type = string
  default = "iamrole_jim"
}