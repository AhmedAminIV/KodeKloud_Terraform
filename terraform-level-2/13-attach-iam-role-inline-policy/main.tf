module "iam-role" {
  source    = "./modules/role"
  role_name = var.KKE_ROLE_NAME
}

module "iam-policy" {
  source      = "./modules/policy"
  policy_name = var.KKE_POLICY_NAME
}

# --- IAM Role Policy Attachment ---
resource "aws_iam_role_policy_attachment" "xfusion_attach" {
  role       = module.iam-role.iam_role_name
  policy_arn = module.iam-policy.policy_arn
}