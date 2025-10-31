output "KKE_secret_name" {
  description = "The name of the secret"
  value       = var.KKE_SECRET_NAME
}

output "KKE_role_name" {
  description = "The name of the IAM role"
  value       = var.KKE_ROLE_NAME
}

output "KKE_policy_name" {
  description = "The name of the IAM policy"
  value       = var.KKE_POLICY_NAME
}
