# Task: Create an AMI from an EC2 instance using Terraform

For this task, create an AMI from an existing EC2 instance named xfusion-ec2 using Terraform.
Name of the AMI should be xfusion-ec2-ami, make sure AMI is in available state.
The Terraform working directory is /home/bob/terraform.
Update the main.tf file (do not create a separate .tf file) to create the AMI.

This folder contains Terraform code to **Create an AMI from an EC2 instance using Terraform**.

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
