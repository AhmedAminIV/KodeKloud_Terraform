resource "aws_eip" "devops_eip" {
  tags = {
    Name = var.eip_name
  }
}