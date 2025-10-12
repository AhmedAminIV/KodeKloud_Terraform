# Task: Setup IAM Role variables in Terraform

The Nautilus DevOps team is automating IAM role creation using Terraform to streamline permissions management.
As part of this task, they need to create an IAM role with specific requirements.

For this task, create an AWS IAM role using Terraform with the following requirements:
The IAM role name **iamrole_jim** should be stored in a variable named **KKE_iamrole**.

This folder contains Terraform code to **Setup IAM Role variables in Terraform**.

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
