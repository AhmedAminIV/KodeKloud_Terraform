variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "KKE_iampolicy" {
  description = "Kode Kloud Engineer mark iam policy"
  type = string
  default = "iampolicy_mark"
}