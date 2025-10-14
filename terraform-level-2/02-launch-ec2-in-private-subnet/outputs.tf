output "KKE_vpc_name" {
  description = "The name of the created VPC"
  value       = module.private_vpc_ec2.KKE_vpc_name
}

output "KKE_subnet_name" {
  description = "The name of the created Subnet"
  value       = module.private_vpc_ec2.KKE_subnet_name
}

output "KKE_ec2_private" {
  description = "The name of the EC2 instance in the private subnet"
  value       = module.private_vpc_ec2.KKE_ec2_private
}
