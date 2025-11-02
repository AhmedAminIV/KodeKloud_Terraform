output "alarm_name" {
  value = aws_cloudwatch_metric_alarm.this.alarm_name
}

output "alarm_actions" {
  value = aws_cloudwatch_metric_alarm.this.alarm_actions
}
