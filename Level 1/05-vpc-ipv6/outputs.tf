# -------------------------------
# Outputs
# -------------------------------
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.xfusion.id
}

output "vpc_ipv6_cidr" {
  description = "Amazon-provided IPv6 CIDR block"
  value       = aws_vpc.xfusion.ipv6_cidr_block
}
