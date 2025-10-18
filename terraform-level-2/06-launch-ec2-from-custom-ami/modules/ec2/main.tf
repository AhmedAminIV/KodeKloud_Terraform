# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = {
    Name = var.instance_name
  }
}

variable "ami_id" {
  description = "AWS AMI id for the EC2 Instances"
  type = string
}

variable "instance_type" {
  description = "Instance type"
  type = string
}

variable "instance_name" {
  description = "Name tag for the new EC2 Instance"
  type = string
}

variable "sg_ids" {
  description = "List of security groups attached to the ec2 instance"
  type = list(string)
}

output "instance_name" {
  value = aws_instance.ec2.tags["Name"]
}

output "instance_id" {
  value = aws_instance.ec2.id
}

