resource "aws_iam_user" "iam_user" {
  name = var.user_name

  tags = {
    Name = var.user_name
  }
}
