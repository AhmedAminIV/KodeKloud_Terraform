module "ec2_instance" {
  source         = "./modules"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_name  = var.instance_name
}


#  terraform state mv aws_instance.web_server module.ec2_instance.aws_instance.web_server
#  terraform apply -replace=RESOURCE_ADDRESS