# Task: Setup IAM User variables in Terraform

The Nautilus DevOps team is automating IAM user creation using Terraform for better identity management.

For this task, create an AWS IAM User using Terraform with the following requirements:
The IAM User name iamuser_jim should be stored in a variable named KKE_user.

This folder contains Terraform code to **Setup IAM User variables in Terraform**.

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
