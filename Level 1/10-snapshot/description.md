# Task: Create a Snapshot of an EBS Volume using Terraform

The Nautilus DevOps team has some volumes in different regions in their AWS account.
They are going to setup some automated backups so that all important data can be backed up on regular basis.
For now they shared some requirements to take a snapshot of one of the volumes they have.

Create a snapshot of an existing volume named datacenter-vol in us-east-1 region using terraform.

1) The name of the snapshot must be datacenter-vol-ss.
2) The description must be Datacenter Snapshot.
3) Make sure the snapshot status is completed before submitting the task.

This folder contains Terraform code to **Create a Snapshot of an EBS Volume using Terraform**.

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
