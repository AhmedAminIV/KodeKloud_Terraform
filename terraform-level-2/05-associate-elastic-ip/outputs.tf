output "KKE_instance_name" {
  value = module.ec2_instance.instance_name
}

output "KKE_eip" {
  value = module.elastic_ip.eip
}