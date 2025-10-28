resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = "Read-only access to the DynamoDB table"

  policy = local.policy
}
