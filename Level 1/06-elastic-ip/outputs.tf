output "devops_eip_ip" {
  description = "The public IP address of the devops-eip Elastic IP."
  value       = aws_eip.devops_eip.public_ip
}