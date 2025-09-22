output "log_group_name" {
  description = "The name of the CloudWatch log group"
  value       = aws_cloudwatch_log_group.datacenter_log_group.name
}

output "log_stream_name" {
  description = "The name of the CloudWatch log stream"
  value       = aws_cloudwatch_log_stream.datacenter_log_stream.name
}