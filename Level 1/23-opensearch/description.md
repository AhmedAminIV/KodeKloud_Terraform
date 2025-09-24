# Task: Setup OpenSearch using Terraform

The Nautilus DevOps team needs to set up an Amazon OpenSearch Service domain to store and search their application logs.
The domain should have the following specification:

1) The domain name should be devops-es.

This folder contains Terraform code to **Setup OpenSearch using Terraform**.

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
