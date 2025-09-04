# -----------------------------
# Outputs
# -----------------------------
output "security_group_id" {
  description = "The ID of the created security group"
  value       = aws_security_group.datacenter_sg.id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = aws_security_group.datacenter_sg.name
}
