variable "policy_name" {
  description = "Name for the policy"
  type        = string
}

variable "policy_action" {
  description = "Actions allowed for the policy"
  type        = list(string)
  default     = ["ec2:DescribeInstances"]
}

variable "resources_allowed" {
  description = "the resources that action will be applied on"
  type        = string
  default     = "*"
}