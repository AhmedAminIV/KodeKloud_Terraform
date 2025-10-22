output "instance_name" {
  value = module.ec2_instance.ec2_name
}

output "bucket_arn" {
  value = module.s3_bucket.bucket_arn
}

output "bucket_name" {
  value = module.s3_bucket.bucket_name
}