resource "aws_eip" "eip" {
  instance = var.instance_id
  tags = {
    Name = var.eip_name
  }
}

variable "instance_id" {
  description = "Instance id to attach the elastic ip to"
  type = string
}

variable "eip_name" {
  description = "Elastic Ip Name tag"
  type = string
}

output "eip" {
  value = aws_eip.eip.public_ip
}