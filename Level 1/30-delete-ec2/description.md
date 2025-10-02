# Task: Delete an EC2 instance using Terraform

During the migration process, several resources were created under the AWS account.
Some of these test resources are no longer needed at the moment, so we need to clean them up temporarily.
One such instance is currently unused and should be deleted.

1) Delete the ec2 instance named devops-ec2 present in us-east-1 region using terraform. 
2) Make sure to keep the provisioning code, as we might need to provision this instance again later.
3) Before submitting your task, make sure instance is in terminated state.

This folder contains Terraform code to **Delete an EC2 instance using Terraform**.

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
