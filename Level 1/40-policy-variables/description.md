# Task: Setup IAM Policy variables in Terraform

The Nautilus DevOps team is automating IAM policy creation using Terraform to enhance security and access management.
As part of this task, they need to create an IAM policy with specific requirements.

For this task, create an AWS IAM policy using Terraform with the following requirements:
The IAM policy name **iampolicy_mark** should be stored in a variable named **KKE_iampolicy**.

This folder contains Terraform code to **Setup IAM Policy variables in Terraform**.

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
