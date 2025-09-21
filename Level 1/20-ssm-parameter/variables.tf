variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ssm_parameter_name" {
  description = "aws SSM parameter name"
  type = string
  default = "xfusion-ssm-parameter"
}

variable "parameter_type" {
  description = "aws SSM parameter type"
  type = string
  default = "String"
}

variable "parameter_value" {
  description = "aws SSM parameter value"
  type = string
  default = "xfusion-value"
}