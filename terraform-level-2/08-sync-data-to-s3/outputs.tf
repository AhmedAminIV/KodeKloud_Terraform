output "new_kke_bucket_name" {
  description = "The name of the new bucket created"
  value       = module.s3_new_bucket.new_kke_bucket_name
}

output "new_kke_bucket_acl" {
  description = "The ACL of the new bucket created"
  value       = module.s3_new_bucket.new_kke_bucket_acl
}
