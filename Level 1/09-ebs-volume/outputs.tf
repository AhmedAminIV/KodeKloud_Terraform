output "vol_id" {
  description = "The id of the created EBS volume"
  value = aws_ebs_volume.devops-volume.id
}

output "vol_az" {
  description = "The id of the created EBS volume"
  value = aws_ebs_volume.devops-volume.availability_zone
}
