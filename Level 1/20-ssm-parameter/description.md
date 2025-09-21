# Task: Create an SSM Parameter using Terraform

The Nautilus DevOps team needs to create an SSM parameter in AWS with the following requirements:

1) The name of the parameter should be xfusion-ssm-parameter.
2) Set the parameter type to String.
3) Set the parameter value to xfusion-value.
4) The parameter should be created in the us-east-1 region.
5) Ensure the parameter is successfully created using terraform and can be retrieved when the task is completed.

This folder contains Terraform code to **Create an SSM Parameter using Terraform**.

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
