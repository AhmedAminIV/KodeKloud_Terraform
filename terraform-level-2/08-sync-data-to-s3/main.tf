# terraform state mv aws_s3_bucket.wordpress_bucket module.wordpress_bucket.aws_s3_bucket.new_bucket
# terraform state mv aws_s3_bucket_acl.wordpress_bucket_acl module.wordpress_bucket.aws_s3_bucket_acl.new_bucket_acl
# terraform state list
module "wordpress_bucket" {
  source      = "./modules/s3_create"
  bucket_name = var.source_bucket
}

module "s3_new_bucket" {
  source      = "./modules/s3_create"
  bucket_name = var.KKE_BUCKET
}

module "s3_migration" {
  source        = "./modules/s3_migration"
  new_bucket    = var.KKE_BUCKET
  source_bucket = var.source_bucket

  depends_on = [
    module.s3_new_bucket,
    module.wordpress_bucket
  ]

}