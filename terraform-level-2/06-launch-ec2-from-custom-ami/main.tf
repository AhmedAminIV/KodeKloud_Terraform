module "source_ec2" {
  # terraform state mv aws_instance.ec2 module.source_ec2.aws_instance.ec2

  # if this bugs use the following

  # terraform import module.source_ec2.aws_instance.ec2 i-0016c6804f52bd5cf
  # terraform state rm module.source_ec2.aws_instance.ec2
  # terraform state mv aws_instance.ec2 module.source_ec2.aws_instance.ec2

  source        = "./modules/ec2"
  instance_type = var.instance_type
  instance_name = var.instance_name
  sg_ids        = var.sg_ids
  ami_id        = local.AMI_ID
}

# Create AMI from existing instance
module "datacenter_ami" {
  source             = "./modules/ami"
  ami_name           = var.ami_name
  source_instance_id = module.source_ec2.instance_id
}

module "using-custom-ami" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  instance_name = var.new_instance_name
  sg_ids        = var.sg_ids
  ami_id        = module.datacenter_ami.ami_id
  depends_on = [module.datacenter_ami]
}