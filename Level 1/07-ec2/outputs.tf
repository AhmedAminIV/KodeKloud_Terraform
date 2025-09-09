output "ec2_instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.datacenter.id
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.datacenter.public_ip
}

output "private_key_path" {
  description = "Path to the saved private key"
  value       = local_file.private_key.filename
}