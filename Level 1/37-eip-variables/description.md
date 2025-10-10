# Task: Setup Elastic IP variables in Terraform

For this task, create an AWS Elastic IP using Terraform with the following requirement:
The Elastic IP name devops-eip should be stored in a variable named KKE_eip.

This folder contains Terraform code to **Setup Elastic IP variables in Terraform**.

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
