variable "stack_name" {
  description = "Cloudformation stack name"
  type        = string
}

variable "template_body" {
  description = "Cloudformation template body"
  type        = string
}

variable "parameters" {
  description = "Cloudformation parameters for the stack"
  type = map(string)
}