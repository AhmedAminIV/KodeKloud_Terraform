variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "KKE_eip" {
  description = "KodeKloud elastic ip name"
  type = string
  default = "devops-eip"
}
