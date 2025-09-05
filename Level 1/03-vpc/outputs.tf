# -------------------------------
# Outputs
# -------------------------------
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.nautilus.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the created VPC"
  value       = aws_vpc.nautilus.cidr_block
  }