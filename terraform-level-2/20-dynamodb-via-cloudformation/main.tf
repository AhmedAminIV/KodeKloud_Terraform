module "cf_dynamo_stack" {
  source        = "./modules/cloudformation"
  stack_name    = var.stack_name
  template_body = local.cf_template_body
  parameters = {
    TableName = var.KKE_DYNAMODB_TABLE_NAME
  }
}
