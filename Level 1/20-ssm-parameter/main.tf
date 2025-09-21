resource "aws_ssm_parameter" "xfusion" {
  name  = var.ssm_parameter_name
  type  = var.parameter_type
  value = var.parameter_value
}
