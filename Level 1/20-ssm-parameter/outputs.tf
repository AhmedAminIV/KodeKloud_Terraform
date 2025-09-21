output "ssm_parameter_name" {
  description = "The name of the SSM parameter"
  value       = aws_ssm_parameter.xfusion.name
}

output "ssm_parameter_value" {
  description = "The value of the SSM parameter"
  value       = aws_ssm_parameter.xfusion.value
  sensitive   = true
}