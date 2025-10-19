output "kke_kinesis_stream_name" {
  description = "The name of the Kinesis Data Stream"
  value       = module.kinesis_monitoring.kinesis_stream_name
}

output "kke_kinesis_alarm_name" {
  description = "The name of the CloudWatch Alarm"
  value       = module.kinesis_monitoring.kinesis_alarm_name
}