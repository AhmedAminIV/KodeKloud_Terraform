output "kke_vpc_name" {
  description = "The name of the created VPC"
  value       = module.vpc_subnet.kke_vpc_name
}

output "kke_subnet_name" {
  description = "The name of the created Subnet"
  value       = module.vpc_subnet.kke_subnet_name
}
