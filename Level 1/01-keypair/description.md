# Task: Create an AWS Key Pair using Terraform

This folder contains Terraform code to **Create an AWS Key Pair using Terraform**.

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
## Problem
The Nautilus DevOps team is strategizing the migration of a portion of their infrastructure to the AWS cloud.
Recognizing the scale of this undertaking,
they have opted to approach the migration in incremental steps rather than as a single massive transition.
To achieve this, they have segmented large tasks into smaller, more manageable units.
This granular approach enables the team to execute the migration in gradual phases,
ensuring smoother implementation and minimizing disruption to ongoing operations.
By breaking down the migration into smaller tasks,
the Nautilus DevOps team can systematically progress through each stage,
allowing for better control, risk mitigation, and optimization of resources throughout the migration process.

For this task, create a key pair using Terraform with the following requirements:

Name of the key pair should be datacenter-kp.

Key pair type must be rsa.

The private key file should be saved under /home/bob/datacenter-kp.pem.
The Terraform working directory is /home/bob/terraform.
Create the main.tf file (do not create a different .tf file) to accomplish this task.