output "stack_id" {
  description = "ID of the created CloudFormation stack"
  value       = aws_cloudformation_stack.datacenter_stack.id
}

output "bucket_name" {
  description = "The S3 bucket name created by CloudFormation"
  value       = var.bucket_name
}