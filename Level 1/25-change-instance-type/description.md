# Task: Change the instance type of an EC2 using Terraform

During the migration process, the Nautilus DevOps team created several EC2 instances in different regions.
They are currently in the process of identifying the correct resources and utilization and
are making continuous changes to ensure optimal resource utilization.
Recently, they discovered that one of the EC2 instances was underutilized,
prompting them to decide to change the instance type.
Please make sure the Status check is completed (if it's still in Initializing state) before making any changes to the instance.

Change the instance type from t2.micro to t2.nano for xfusion-ec2 instance using terraform.
Make sure the EC2 instance xfusion-ec2 is in running state after the change.

This folder contains Terraform code to **Change the instance type of an EC2 using Terraform**.

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
