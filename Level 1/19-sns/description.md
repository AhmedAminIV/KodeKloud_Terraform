# Task: Create an SNS Topic using Terraform

The Nautilus DevOps team needs to set up an SNS topic for sending notifications.
They need to create an SNS topic with the following specifications:

1) The topic name should be devops-notifications.

This folder contains Terraform code to **Create an SNS Topic using Terraform**.

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
