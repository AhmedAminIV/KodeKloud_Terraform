variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vol_name" {
  description = "EBS Volume name"
  type        = string
  default     = "devops-volume"
}

variable "vol_type" {
  description = "EBS Volume type"
  type        = string
  default     = "gp3"
}

variable "vol_size" {
  description = "EBS Volume size (GiB)"
  type        = number
  default     = 2
}