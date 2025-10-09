# Task: Setup Security Group variables in Terraform

The Nautilus DevOps team is enhancing infrastructure automation and needs to provision a Security Group using Terraform
with specific configurations.
For this task, create an AWS Security Group using Terraform with the following requirements:

The Security Group name **devops-sg** should be stored in a variable named **KKE_sg**.

Note:
1. The configuration values should be stored in a variables.tf file.
2. The Terraform script should be structured with a main.tf file referencing variables.tf.

This folder contains Terraform code to **Setup Security Group variables in Terraform**.

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
