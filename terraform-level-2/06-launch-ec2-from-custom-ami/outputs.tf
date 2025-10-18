output "KKE_ami_id" {
  value = module.datacenter_ami.ami_id
}

output "KKE_new_instance_id" {
  value = module.using-custom-ami.instance_id
}