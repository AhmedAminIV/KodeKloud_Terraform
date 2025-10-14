# Variables
variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
}

variable "KKE_VPC_CIDR" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "KKE_SUBNET_CIDR" {
  description = "CIDR block for the Subnet"
  type        = string
}

provider "aws" {
  region = var.aws_region
}

# --- Create Private VPC ---
resource "aws_vpc" "datacenter_priv_vpc" {
  cidr_block           = var.KKE_VPC_CIDR
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "datacenter-priv-vpc"
  }
}

# --- Create Private Subnet ---
resource "aws_subnet" "datacenter_priv_subnet" {
  vpc_id                  = aws_vpc.datacenter_priv_vpc.id
  cidr_block              = var.KKE_SUBNET_CIDR
  map_public_ip_on_launch = false  # No auto IP assignment
  availability_zone       = "us-east-1a"
  tags = {
    Name = "datacenter-priv-subnet"
  }

  depends_on = [aws_vpc.datacenter_priv_vpc]
}

# --- Create Security Group (allow only internal VPC traffic) ---
resource "aws_security_group" "private_sg" {
  name        = "priv-vpc-sg"
  description = "Allow only internal VPC communication"
  vpc_id      = aws_vpc.datacenter_priv_vpc.id

  ingress {
    description = "Allow all traffic from within VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.KKE_VPC_CIDR]
  }

  egress {
    description = "Allow all outbound traffic within VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.KKE_VPC_CIDR]
  }

  tags = {
    Name = "datacenter-priv-sg"
  }
}

# --- Create EC2 Instance ---
resource "aws_instance" "datacenter_priv_ec2" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.datacenter_priv_subnet.id
  vpc_security_group_ids      = [aws_security_group.private_sg.id]
  associate_public_ip_address = false

  tags = {
    Name = "datacenter-priv-ec2"
  }

  depends_on = [aws_subnet.datacenter_priv_subnet, aws_security_group.private_sg]

}

# --- Get Latest Ubuntu AMI / doesn't work well with kodekloud---
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    # Searches for the latest Ubuntu 22.04 LTS (Jammy) server image
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  # Canonical's official AWS Account ID (099720109477)
  owners = ["099720109477"]
}

# --- Outputs ---
output "KKE_vpc_name" {
  description = "VPC name"
  value       = aws_vpc.datacenter_priv_vpc.tags["Name"]
}

output "KKE_subnet_name" {
  description = "Subnet name"
  value       = aws_subnet.datacenter_priv_subnet.tags["Name"]
}

output "KKE_ec2_private" {
  description = "EC2 instance name"
  value       = aws_instance.datacenter_priv_ec2.tags["Name"]
}
