variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "hash_key_name" {
  description = "Primary (hash) key name for the DynamoDB table"
  type        = string
}

variable "hash_key_type" {
  description = "Primary (hash) key type for the DynamoDB table (S = String, N = Number, B = Binary)"
  type        = string
}