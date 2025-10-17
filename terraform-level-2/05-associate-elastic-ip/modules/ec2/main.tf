resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

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
  description = "Name tag for the EC2 Instance"
  type = string
}

output "instance_name" {
  value = aws_instance.ec2.tags["Name"]
}

output "instance_id" {
  value = aws_instance.ec2.id
}
