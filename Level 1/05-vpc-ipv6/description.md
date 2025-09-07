# Task: Create a VPC with IPv6 support using Terraform

For this task, create a VPC named xfusion-vpc in the us-east-1 region,
with the Amazon-provided IPv6 CIDR block using terraform.

This folder contains Terraform code to **Create a VPC with IPv6 support using Terraform**.

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
