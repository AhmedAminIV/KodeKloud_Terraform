module "private_vpc_ec2" {
  source         = "./modules"
  KKE_VPC_CIDR   = var.KKE_VPC_CIDR
  KKE_SUBNET_CIDR = var.KKE_SUBNET_CIDR
  aws_region     = var.aws_region
}