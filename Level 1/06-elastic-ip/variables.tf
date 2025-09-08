variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "eip_name" {
  description = "Elastic ip name"
  type        = string
  default     = "devops-eip"
}