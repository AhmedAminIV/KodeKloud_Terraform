resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = "policy that grants permission to publish messages to the SNS topic."

  policy = local.policy
}
