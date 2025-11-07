output "items" {
  description = "All items inserted into the DynamoDB table"
  value       = values(aws_dynamodb_table_item.this)[*].table_name
}
