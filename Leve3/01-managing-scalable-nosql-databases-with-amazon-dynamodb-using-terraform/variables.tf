variable "KKE_TABLE_NAME" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "hash_key_name" {
  description = "Primary (hash) key name for the DynamoDB table"
  type        = string
  default     = "taskId"
}

variable "hash_key_type" {
  description = "Primary (hash) key type for the DynamoDB table (S = String, N = Number, B = Binary)"
  type        = string
  default     = "S"
}

variable "table_items" {
  description = "items to insert in dynamodb table"
  type        = list(map(string))
  default = [
    {
      taskId      = "1"
      description = "Learn DynamoDB"
      status      = "completed"
    },
    {
      taskId      = "2"
      description = "Build To-Do App"
      status      = "in-progress"
    }
  ]
}