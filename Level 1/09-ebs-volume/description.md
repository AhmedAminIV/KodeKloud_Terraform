# Task: Create an EBS Volume using Terraform

For this task, create an AWS EBS volume using Terraform with the following requirements:

Name of the volume should be devops-volume.
Volume type must be gp3.
Volume size must be 2 GiB.
Ensure the volume is created in us-east-1.

This folder contains Terraform code to **Create an EBS Volume using Terraform**.

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
