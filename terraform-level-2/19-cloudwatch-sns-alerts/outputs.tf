output "KKE_sns_topic_name" {
  value = module.sns.topic_name
}

output "KKE_cloudwatch_alarm_name" {
  value = module.cw.alarm_name
}
