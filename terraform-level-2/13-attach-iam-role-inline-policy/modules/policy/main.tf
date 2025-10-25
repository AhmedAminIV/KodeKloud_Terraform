resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = "Policy that allows listing EC2 instances"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = var.policy_action
        Resource = var.resources_allowed
      }
    ]
  })
}