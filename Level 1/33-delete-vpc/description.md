# Task: Delete a VPC using Terraform

Delete a VPC named datacenter-vpc present in us-east-1 region using Terraform.
Make sure to keep the provisioning code, as we might need to provision this instance again later.

This folder contains Terraform code to **Delete a VPC using Terraform**.

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
