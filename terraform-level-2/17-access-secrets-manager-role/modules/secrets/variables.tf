variable "secret_name" {
  description = "Name of the AWS Secrets Manager secret"
  type        = string
}

variable "secret_value" {
  description = "Value for the secret in JSON format"
  type        = string
}