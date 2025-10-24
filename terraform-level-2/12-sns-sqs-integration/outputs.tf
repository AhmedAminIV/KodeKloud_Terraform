output "kke_sns_topic_arn" {
  description = "ARN of the SNS topic"
  value       = module.sns_topic.topic_arn
}

output "kke_sqs_queue_url" {
  description = "URL of the SQS queue"
  value       = module.sqs_queue.queue_url
}
