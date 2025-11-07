variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "hash_key_name" {
  description = "Primary (hash) key name for the DynamoDB table"
  type        = string
}

variable "items" {
  description = "List of DynamoDB items to insert"
  type        = list(map(string))
  default     = []
}