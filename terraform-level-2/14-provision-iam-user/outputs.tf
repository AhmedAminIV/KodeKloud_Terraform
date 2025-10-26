output "kke_iam_user_name" {
  description = "The name of the created IAM user"
  value       = module.iam_user.user_name
}