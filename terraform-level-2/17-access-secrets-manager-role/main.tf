# --- Create Secret ---
module "secret" {
  source       = "./modules/secrets"
  secret_name  = var.KKE_SECRET_NAME
  secret_value = var.KKE_SECRET_VALUE
}

# --- Create IAM Role ---
module "iam_role" {
  source    = "./modules/iam_role"
  role_name = var.KKE_ROLE_NAME
}

# --- Create IAM Policy & Attach ---
module "iam_policy" {
  source         = "./modules/iam_policy"
  policy_name    = var.KKE_POLICY_NAME
  secret_arn     = module.secret.secret_arn
  policy_actions = var.policy_actions
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = module.iam_role.role_id
  policy_arn = module.iam_policy.policy_arn
}
