resource "aws_iam_user" "jim" {
  name = var.KKE_user

  tags = {
    department = "KodeKloud Engineer"
  }
}