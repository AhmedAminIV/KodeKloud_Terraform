output "iam_user_name" {
  description = "Name of the IAM user"
  value       = aws_iam_user.iam_user.name
}

output "iam_user_arn" {
  description = "ARN of the IAM user"
  value       = aws_iam_user.iam_user.arn
}