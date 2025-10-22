resource "aws_instance" "this" {
  ami                  = var.ami_id
  instance_type        = "t2.micro"
  iam_instance_profile = var.instance_profile

  tags = {
    Name = var.instance_name
  }

  user_data = local.ec2_user_data
}