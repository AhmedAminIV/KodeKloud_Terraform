variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "policy_actions" {
  description = "Actions allowed for the IAM policy"
  type = list(string)
  default = [
    "dynamodb:GetItem",
    "dynamodb:Scan",
    "dynamodb:Query"
  ]
}

variable "KKE_POLICY_NAME" {
  description = "AWS IAM policy name"
  type = string
}

variable "KKE_TABLE_NAME" {
  description = "Dynamo db table name"
  type = string
}

variable "KKE_ROLE_NAME" {
  description = "AWS Iam Role name"
  type = string
}