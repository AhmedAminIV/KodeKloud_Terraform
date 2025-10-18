resource "aws_ami_from_instance" "ami" {
  name               = var.ami_name
  source_instance_id = var.source_instance_id
}

variable "ami_name" {
  description = "Name for the new AMI"
  type        = string
}

variable "source_instance_id" {
  description = "Instance ID to create AMI from"
  type        = string
}

output "ami_id" {
  description = "AMI ID created from instance"
  value       = aws_ami_from_instance.ami.id
}
