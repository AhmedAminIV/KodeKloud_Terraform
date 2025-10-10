resource "aws_eip" "devops_eip" {
  vpc = true

  tags = {
    Name = var.KKE_eip
  }
}