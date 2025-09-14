output "bucket_arn" {
  description = "S3 bucket ARN"
  value       = aws_s3_bucket.nautilus_public-s3.arn
}