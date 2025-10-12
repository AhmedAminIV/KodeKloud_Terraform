resource "aws_iam_user_policy" "mark_policy" {
  name = var.KKE_iampolicy
  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
  user = aws_iam_user.mark.name
}

resource "aws_iam_user" "mark" {
  name = "mark"
}
