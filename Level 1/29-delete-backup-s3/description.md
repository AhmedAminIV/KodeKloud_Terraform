# Task: Delete a backup from S3 using Terraform

A S3 bucket named nautilus-bck-20855 already exists.

1) Copy the contents of nautilus-bck-20855 S3 bucket to 
/opt/s3-backup/ directory on terraform-client host (the landing host once you load this lab).
2) Delete the S3 bucket nautilus-bck-20855.

This folder contains Terraform code to **Delete a backup from S3 using Terraform**.

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
