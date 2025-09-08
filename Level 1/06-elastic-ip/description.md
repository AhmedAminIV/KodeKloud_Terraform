# Task: Create an Elastic IP using Terraform

For this task, allocate an Elastic IP address named devops-eip using Terraform.

This folder contains Terraform code to **Create an Elastic IP using Terraform**.

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
