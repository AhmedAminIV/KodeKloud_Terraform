# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.ec2_type
  subnet_id     = ""
  vpc_security_group_ids = [
    var.ec2_sg
  ]

  tags = {
    Name = var.ec2_name
  }
}

