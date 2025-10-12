resource "aws_iam_role" "jim_iam_role" {
  name               = var.KKE_iamrole

  tags = {
    Name = var.KKE_iamrole
  }
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}