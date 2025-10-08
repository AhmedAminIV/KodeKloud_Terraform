# Task: Setup VPC variables in Terraform

The Nautilus DevOps team is automating VPC creation using Terraform to manage networking efficiently.
As part of this task, they need to create a VPC with specific requirements.

For this task, create an AWS VPC using Terraform with the following requirements:
The VPC name datacenter-vpc should be stored in a variable named KKE_vpc.
The VPC should have a CIDR block of 10.0.0.0/16.

Note:
The configuration values should be stored in a variables.tf file.
The Terraform script should be structured with a main.tf file referencing variables.tf.

This folder contains Terraform code to **Setup VPC variables in Terraform**.

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
