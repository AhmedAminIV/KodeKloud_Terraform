output "ami_id" {
  description = "ID of the created AMI"
  value       = aws_ami_from_instance.xfusion_ec2_ami.id
}
