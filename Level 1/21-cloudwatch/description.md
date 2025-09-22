# Task: Setup CloudWatch using Terraform

The Nautilus DevOps team needs to set up CloudWatch logging for their application.
They need to create a CloudWatch log group and log stream with the following specifications:

1) The log group name should be datacenter-log-group.
2) The log stream name should be datacenter-log-stream.

This folder contains Terraform code to **Setup CloudWatch using Terraform**.

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
