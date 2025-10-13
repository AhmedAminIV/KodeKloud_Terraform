variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
}

variable "KKE_VPC_NAME" {
  description = "Name of the VPC"
  type        = string
}

variable "KKE_SUBNET_NAME" {
  description = "Name of the Subnet"
  type        = string
}

provider "aws" {
  region = var.aws_region
}

# Create VPC
resource "aws_vpc" "datacenter_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.KKE_VPC_NAME
  }
}

# Create Subnet (depends on VPC)
resource "aws_subnet" "datacenter_subnet" {
  vpc_id                  = aws_vpc.datacenter_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    Name = var.KKE_SUBNET_NAME
  }

  depends_on = [aws_vpc.datacenter_vpc]
}

# Module outputs
output "kke_vpc_name" {
  value       = aws_vpc.datacenter_vpc.tags["Name"]
  description = "The name of the VPC"
}

output "kke_subnet_name" {
  value       = aws_subnet.datacenter_subnet.tags["Name"]
  description = "The name of the Subnet"
}
