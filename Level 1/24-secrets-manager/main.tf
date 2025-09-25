resource "aws_secretsmanager_secret" "datacenter_secret" {
  name = var.secret_name
}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.datacenter_secret.id
  secret_string = jsonencode(var.secret_value)
}
