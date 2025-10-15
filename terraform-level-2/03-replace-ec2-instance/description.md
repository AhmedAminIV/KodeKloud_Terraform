# Task 03: replace ec2 instance

## Objective
To test resilience and recreation behavior in Terraform,
the DevOps team needs to demonstrate the use of the -replace option to forcefully recreate an EC2 instance without changing its configuration.
Please complete the following tasks:

Use the Terraform CLI -replace option to destroy and recreate the EC2 instance nautilus-ec2,
even though the configuration remains unchanged.

Ensure that the instance is recreated successfully.


### Directory Structure
```
03-replace-ec2-instance/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   └── main.tf
├── files/
└── description.md
```

### Notes
- All AWS resources should be created in **us-east-1**.
- Use variables for reusability.
- Define meaningful outputs for verification.
