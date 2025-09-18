# Task: Create a DynamoDB Table using Terraform

The Nautilus DevOps team needs to set up a DynamoDB table for storing user data.
They need to create a DynamoDB table with the following specifications:

1) The table name should be datacenter-users.
2) The primary key should be datacenter_id (String).
3) The table should use PAY_PER_REQUEST billing mode.

This folder contains Terraform code to **Create a DynamoDB Table using Terraform**.

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
