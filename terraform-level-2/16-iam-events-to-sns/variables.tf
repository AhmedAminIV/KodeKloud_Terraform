variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "policy_actions" {
  description = "Actions that the policy will grant"
  type        = list(string)
  default     = ["sns:Publish"]
}