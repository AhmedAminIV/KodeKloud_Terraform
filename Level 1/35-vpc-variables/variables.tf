variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "KKE_vpc" {
  description = "kodekloud vpc name"
  type = string
  default = "datacenter-vpc"
}

variable "kke_vpc_cidr" {
  description = "kodekloud vpc cidr range"
  type = string
  default = "10.0.0.0/16"
}