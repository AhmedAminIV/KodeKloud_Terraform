resource "aws_iam_user" "user" {
  name = var.user_name
  path = "/"
  # local-exec provisioner to log confirmation
  provisioner "local-exec" {
    command = "echo 'KKE ${var.user_name} has been created successfully!' >> /home/bob/terraform/KKE_user_created.log"
  }
  tags = {
    group = "Admin"
  }
}

