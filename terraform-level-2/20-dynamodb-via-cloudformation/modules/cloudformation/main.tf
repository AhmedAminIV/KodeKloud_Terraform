resource "aws_cloudformation_stack" "this" {
  name = var.stack_name

  template_body = var.template_body

  parameters = var.parameters

  lifecycle {
    ignore_changes = [parameters]
  }
}