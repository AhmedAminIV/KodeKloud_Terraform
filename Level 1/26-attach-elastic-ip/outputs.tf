output "ec2_name" {
  value = aws_instance.ec2.tags.Name
}

output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}

output "elastic_ip" {
  value = aws_eip.ec2_eip.public_ip
}

output "eip_association" {
  value = aws_eip_association.eip_assoc.id
}