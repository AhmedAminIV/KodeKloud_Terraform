module "dynamodb" {
  source        = "./modules/dynamodb"
  table_name    = var.KKE_TABLE_NAME
  hash_key_name = var.hash_key_name
  hash_key_type = var.hash_key_type
}

module "items" {
  source        = "./modules/dynamodb_items"
  table_name    = module.dynamodb.table_name
  hash_key_name = module.dynamodb.hash_key
  items         = var.table_items
}
