variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "policy_actions" {
  description = "Actions that the policy will grant"
  type        = list(string)
  default = ["secretsmanager:GetSecretValue",
  "secretsmanager:DescribeSecret"]
}

variable "KKE_SECRET_NAME" {
  description = "Name of the AWS Secrets Manager secret"
  type        = string
}

variable "KKE_SECRET_VALUE" {
  description = "Value for the secret in JSON format"
  type        = string
}

variable "KKE_ROLE_NAME" {
  description = "IAM role name for EC2 access"
  type        = string
}

variable "KKE_POLICY_NAME" {
  description = "IAM policy name for secret access"
  type        = string
}