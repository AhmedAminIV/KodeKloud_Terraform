output "kke_instance_names" {
  description = "Names of EC2 instances created"
  value       = module.ec2_instances.instance_names
}
