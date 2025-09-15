# Task: Create a Private S3 Bucket using Terraform

Create an S3 bucket using Terraform with the following details:

1) The name of the S3 bucket must be datacenter-s3-29687.
2) The S3 bucket must block all public access, making it a private bucket.

This folder contains Terraform code to **Create a Private S3 Bucket using Terraform**.

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
