variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "secret_name" {
  description = "datacenter Secret name"
  type = string
  default = "datacenter-secret"
}

variable "secret_value" {
  description = "The secret key-value pair"
  default = {
    username = "admin"
    password = "Namin123"
  }

  type = map(string)
  sensitive = true
}
