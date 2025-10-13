terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc_subnet" {
  source          = "./modules"
  KKE_VPC_NAME    = var.KKE_VPC_NAME
  KKE_SUBNET_NAME = var.KKE_SUBNET_NAME
  aws_region      = var.aws_region
}
