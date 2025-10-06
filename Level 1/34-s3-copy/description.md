# Task: Copy data to an S3 bucket using Terraform

The Nautilus DevOps team is presently immersed in data migrations,
transferring data from on-premise storage systems to AWS S3 buckets.
They have recently received some data that they intend to copy to one of the S3 buckets.

S3 bucket named datacenter-cp-16118 already exists.
Copy the file /tmp/datacenter.txt to s3 bucket datacenter-cp-16118 using Terraform.

This folder contains Terraform code to **Copy data to an S3 bucket using Terraform**.

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
