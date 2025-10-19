output "kinesis_stream_name" {
  value       = aws_kinesis_stream.nautilus_stream.name
  description = "Name of the Kinesis Data Stream"
}

output "kinesis_alarm_name" {
  value       = aws_cloudwatch_metric_alarm.nautilus_alarm.alarm_name
  description = "Name of the CloudWatch Alarm"
}
