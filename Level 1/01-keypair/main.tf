# TODO: Add Terraform resources for keypair

# -----------------------------
# Generate RSA Private Key
# -----------------------------
resource "tls_private_key" "this" {
  algorithm = var.key_algorithm
  rsa_bits  = var.key_rsa_bits
}

# -----------------------------
# Create AWS Key Pair
# -----------------------------
resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = tls_private_key.this.public_key_openssh
}

# -----------------------------
# Save Private Key Locally
# -----------------------------
resource "local_file" "private_key" {
  content        = tls_private_key.this.private_key_pem
  filename       = var.private_key_path
  file_permission = "0600"
}