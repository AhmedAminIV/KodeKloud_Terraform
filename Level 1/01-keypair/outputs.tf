# TODO: Add outputs for keypair
output "key_name" {
  description = "The name of the created AWS key pair"
  value       = aws_key_pair.this.key_name
}

output "private_key_path" {
  description = "The path where the private key is saved"
  value       = local_file.private_key.filename
}