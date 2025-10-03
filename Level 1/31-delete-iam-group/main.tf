resource "aws_iam_group" "this" {
  name = var.group_name
}

## again just use terraform destroy LOL