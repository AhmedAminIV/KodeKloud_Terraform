# TODO: Add Terraform resources for security-group

# -----------------------------
# Security Group
# -----------------------------
resource "aws_security_group" "datacenter_sg" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = data.aws_vpc.default.id

  tags = {
    Name = var.sg_name
  }
}

# -----------------------------
# Ingress Rules
# -----------------------------
# Allow HTTP (port 80)
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.datacenter_sg.id
  cidr_ipv4         = var.cidr_anywhere
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  description       = "Allow HTTP from anywhere"
}

# Allow SSH (port 22)
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.datacenter_sg.id
  cidr_ipv4         = var.cidr_anywhere
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  description       = "Allow SSH from anywhere"
}

# -----------------------------
# Data Source: Default VPC
# -----------------------------
data "aws_vpc" "default" {
  default = true
}
