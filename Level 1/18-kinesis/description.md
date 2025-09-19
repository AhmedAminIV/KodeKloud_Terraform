# Task: Create a Kinesis Stream using Terraform

The Nautilus DevOps team needs to create an AWS Kinesis data stream for real-time data processing.
This stream will be used to ingest and process large volumes of streaming data,
which will then be consumed by various applications for analytics and real-time decision-making.

The stream should be named nautilus-stream.
Use Terraform to create this Kinesis stream.

This folder contains Terraform code to **Create a Kinesis Stream using Terraform**.

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
