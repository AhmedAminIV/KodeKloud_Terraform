variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "KKE_sg" {
  description = "Security group for kodekloud"
  type = string
  default = "devops-sg"
}