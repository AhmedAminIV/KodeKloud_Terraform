output "stack_name" {
  value = aws_cloudformation_stack.this.name
}

output "stack_id" {
  value = aws_cloudformation_stack.this.id
}
