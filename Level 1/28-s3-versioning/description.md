# Task: Enable versioning in an S3 bucket using Terraform

Data protection and recovery are fundamental aspects of data management.
It's essential to have systems in place to ensure that data can be recovered in case of accidental deletion or corruption.
The DevOps team has received a requirement for implementing such measures for one of the S3 buckets they are managing.

The S3 bucket name is devops-s3-21213, enable versioning for this bucket using Terraform.



This folder contains Terraform code to **Enable versioning in an S3 bucket using Terraform**.

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
