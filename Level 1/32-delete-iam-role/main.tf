resource "aws_iam_role" "role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow"
        Principal = {
          Service = var.role_service
        }
        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name        = var.role_name
  }
}

