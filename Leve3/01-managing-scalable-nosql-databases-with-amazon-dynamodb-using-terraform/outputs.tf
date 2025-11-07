output "kke_dynamodb_table_name" {
  description = "The name of the DynamoDB table created"
  value       = module.dynamodb.table_name
}
