resource "aws_ebs_volume" "devops-volume" {
  availability_zone = "us-east-1a"
  size              = var.vol_size
  type = var.vol_type
  tags = {
    Name = var.vol_name
  }
}