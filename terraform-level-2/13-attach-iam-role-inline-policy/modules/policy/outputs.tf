output "iam_policy_name" {
  value = aws_iam_policy.this.name
}

output "policy_arn" {
  value = aws_iam_policy.this.arn
}