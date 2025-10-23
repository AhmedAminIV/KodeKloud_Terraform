module "s3_bucket" {
  source = "./modules/s3"

  bucket_name       = var.bucket_name
  enable_versioning = var.enable_versioning
  create_lifecycle  = var.create_lifecycle
  lifecycle_rule_id = var.lifecycle_rule_id
}
