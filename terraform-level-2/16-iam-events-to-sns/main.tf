# SNS Module
module "sns" {
  source = "./modules/sns_topic"

  topic_name = local.KKE_SNS_TOPIC_NAME
}

# IAM Role Module
module "iam_role" {
  source    = "./modules/iam_role"
  role_name = local.KKE_ROLE_NAME
}

# IAM Policy Module
module "iam_policy" {
  source = "./modules/iam_policy"

  policy_name    = local.KKE_POLICY_NAME
  topic_arn      = module.sns.topic_arn
  policy_actions = var.policy_actions
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = module.iam_role.role_name
  policy_arn = module.iam_policy.policy_arn
}
