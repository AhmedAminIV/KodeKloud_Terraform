# Task: Setup Secrets Manager using Terraform

he Nautilus DevOps team needs to store sensitive data securely using AWS Secrets Manager.
They need to create a secret with the following specifications:

1) The secret name should be datacenter-secret.
2) The secret value should contain a key-value pair with username: admin and password: Namin123.

This folder contains Terraform code to **Setup Secrets Manager using Terraform**.

## Files
- `provider.tf`: AWS provider setup.
- `variables.tf`: Input variables (region, etc).
- `main.tf`: Resource definitions.
- `outputs.tf`: Output values.
- `description.md`: Documentation for the task.

## Next Steps
1. Edit `main.tf` to add the required resources.
2. Run:
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```
