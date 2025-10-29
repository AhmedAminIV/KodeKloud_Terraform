output "kke_sns_topic_name" {
  value = module.sns.topic_name
}

output "kke_role_name" {
  value = module.iam_role.role_name
}

output "kke_policy_name" {
  value = module.iam_policy.policy_name
}