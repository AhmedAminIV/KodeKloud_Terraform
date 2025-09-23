# Task: Deploy a CloudFormation template using Terraform

The Nautilus DevOps team is working on automating infrastructure deployment using AWS CloudFormation.
As part of this effort, they need to create a CloudFormation stack that provisions an S3 bucket with versioning enabled.

Create a CloudFormation stack named datacenter-stack using Terraform.
This stack should contain an S3 bucket named datacenter-bucket-24867 as a resource,
and the bucket must have versioning enabled.

This folder contains Terraform code to **Deploy a CloudFormation template using Terraform**.

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
