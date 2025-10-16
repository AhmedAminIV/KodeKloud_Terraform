module "ec2_instances" {
  source          = "./modules"
  instance_count  = var.KKE_INSTANCE_COUNT
  instance_type   = var.KKE_INSTANCE_TYPE
  key_name        = var.KKE_KEY_NAME
  instance_prefix = var.KKE_INSTANCE_PREFIX
  ami_id          = local.AMI_ID
}