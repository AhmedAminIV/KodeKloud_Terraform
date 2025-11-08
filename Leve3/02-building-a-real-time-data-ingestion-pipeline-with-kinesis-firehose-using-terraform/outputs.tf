output "kke_firehose_stream_name" {
  description = "Name of the Firehose delivery stream"
  value       = module.firehose.stream_name
}

output "kke_s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = module.s3.bucket_name
}

output "kke_firehose_role_arn" {
  description = "ARN of the IAM role used by Firehose"
  value       = module.role.role_arn
}
