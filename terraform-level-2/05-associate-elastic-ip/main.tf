module "ec2_instance" {
  source        = "./modules/ec2"
  instance_name = var.instance_name
  instance_type = var.instance_type
  ami_id        = local.AMI_ID
}

module "elastic_ip" {
  source      = "./modules/eip"
  instance_id = module.ec2_instance.instance_id
  eip_name    = var.eip_name
}
