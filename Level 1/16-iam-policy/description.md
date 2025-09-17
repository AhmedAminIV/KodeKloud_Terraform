# Task: Create an IAM Policy using Terraform

Create an IAM policy named iampolicy_rose in us-east-1 region using Terraform.
It must allow read-only access to the EC2 console, i.e.,
this policy must allow users to view all instances, AMIs, and snapshots in the Amazon EC2 console.

This folder contains Terraform code to **Create an IAM Policy using Terraform**.

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
