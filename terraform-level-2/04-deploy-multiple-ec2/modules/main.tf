resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "${var.instance_prefix}-${count.index + 1}"
  }
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "key_name" {
  description = "Name of the key pair to use"
  type        = string
}

variable "instance_prefix" {
  description = "Prefix for instance names"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

output "instance_names" {
  value = [for i in aws_instance.this : i.tags["Name"]]
}
