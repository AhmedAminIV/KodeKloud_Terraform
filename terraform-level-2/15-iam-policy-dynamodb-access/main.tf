module "dynamodb" {
  source     = "./modules/dynamo_db"
  table_name = var.KKE_TABLE_NAME
}

module "iam_role" {
  source    = "./modules/iam_role"
  role_name = var.KKE_ROLE_NAME
}

module "iam_policy" {
  source     = "./modules/iam_policy"
  policy_name = var.KKE_POLICY_NAME
  table_arn   = module.dynamodb.table_arn
  policy_actions = var.policy_actions
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = module.iam_role.role_name
  policy_arn = module.iam_policy.policy_arn
}
