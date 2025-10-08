resource "aws_vpc" "kke_vpc" {
  cidr_block       = var.kke_vpc_cidr

  tags = {
    Name = var.KKE_vpc
  }
}