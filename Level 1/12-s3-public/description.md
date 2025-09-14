# Task: Create a Public S3 Bucket using Terraform

Create a public S3 bucket named nautilus-s3-14145 using Terraform.
Ensure the bucket is accessible publicly once created by setting the proper ACL.

This folder contains Terraform code to **Create a Public S3 Bucket using Terraform**.

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
