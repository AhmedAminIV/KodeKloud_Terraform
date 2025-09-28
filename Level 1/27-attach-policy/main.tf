# Create IAM user
resource "aws_iam_user" "user" {
  name = var.user_name

  tags = {
    Name = var.user_name
  }
}

# Create IAM Policy
resource "aws_iam_policy" "policy" {
  name        = var.policy_name
  description = var.policy_desc

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["ec2:Read*"]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "jim_attach" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.policy.arn
}