output "ec2_name" {
  value = aws_instance.this.tags["Name"]
}
