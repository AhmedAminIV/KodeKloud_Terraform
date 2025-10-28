variable "policy_actions" {
  description = "Actions allowed for the policy"
  type = list(string)
}

variable "policy_name" {
  description = "AWS IAM policy name"
  type = string
}

variable "table_arn" {
  description = "dynamo db table arn"
  type = string
}
