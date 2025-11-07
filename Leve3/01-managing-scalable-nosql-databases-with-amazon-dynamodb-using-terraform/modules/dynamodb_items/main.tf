resource "aws_dynamodb_table_item" "this" {
  for_each = { for i, item in var.items : i => item }

  table_name = var.table_name
  hash_key   = var.hash_key_name

  item = jsonencode({
    for k, v in each.value : k => { S = v }
  })
}