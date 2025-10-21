module "prevent-s3-deletion" {
  source = "./modules/s3-create"
  bucket_name = var.KKE_BUCKET_NAME
  environment = var.environment
}
