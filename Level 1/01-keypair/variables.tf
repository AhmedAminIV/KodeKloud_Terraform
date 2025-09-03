variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "key_name" {
  description = "Name of the AWS key pair"
  type        = string
  default     = "datacenter-kp"
}

variable "key_algorithm" {
  description = "Algorithm for the key pair"
  type        = string
  default     = "RSA"
}

variable "key_rsa_bits" {
  description = "RSA key size in bits"
  type        = number
  default     = 4096
}

variable "private_key_path" {
  description = "Local path to save the private key"
  type        = string
  default     = "/home/bob/datacenter-kp.pem"
}