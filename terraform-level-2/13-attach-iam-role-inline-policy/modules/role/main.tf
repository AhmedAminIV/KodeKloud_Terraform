resource "aws_iam_role" "this" {
  name = var.role_name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = local.role_policy

  tags = {
    Name = var.role_name
  }
}