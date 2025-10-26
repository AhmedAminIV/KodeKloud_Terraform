module "iam_user" {
  source        = "./modules/iam_user"
  user_name = var.KKE_USER_NAME
}

