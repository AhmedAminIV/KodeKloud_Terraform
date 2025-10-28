output "kke_dynamodb_table" {
  value = module.dynamodb.table_name
}

output "kke_iam_role_name" {
  value = module.iam_role.role_name
}

output "kke_iam_policy_name" {
  value = module.iam_policy.policy_name
}
