# S3 Bucket Module
module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = var.KKE_BUCKET_NAME
}

# IAM Role Module
module "iam_role" {
  source = "./modules/iam"

  role_name   = var.KKE_ROLE_NAME
  policy_name = var.KKE_POLICY_NAME
  bucket_arn  = module.s3_bucket.bucket_arn
}

# EC2 Instance Module
module "ec2_instance" {
  source = "./modules/ec2"

  ami_id           = data.aws_ami.amazon_linux2.id
  role_name        = module.iam_role.role_name
  instance_profile = module.iam_role.instance_profile_name
  instance_name    = var.instance_name
}