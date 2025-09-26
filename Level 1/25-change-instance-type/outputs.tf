output "ec2_instance_type" {
  value = aws_instance.ec2.instance_type
}

output "ec2_instance_name" {
  value = aws_instance.ec2.tags.Name
}

output "ec2_instance_arn" {
  value = aws_instance.ec2.arn
}