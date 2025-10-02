# Provision EC2 instance
resource "aws_instance" "ec2" {
  #count = 0  just use destroy ..
  ami           = var.ami
  instance_type = var.flavor
  vpc_security_group_ids = [
    var.sg
  ]

  tags = {
    Name = var.ec2_name
  }
}

## check the state
# aws ec2 describe-instances --region us-east-1 --filters "Name=tag:Name,Values=devops-ec2" --query "Reservations[].Instances[].State.Name"

