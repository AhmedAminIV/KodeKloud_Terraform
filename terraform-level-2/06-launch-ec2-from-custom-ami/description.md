# Task 06: launch ec2 from custom ami

## Objective
The Nautilus DevOps team needs to create an AMI from an existing EC2 instance for backup and scaling purposes.
The following steps are required:

They have an existing EC2 instance named datacenter-ec2.
They need to create an AMI named datacenter-ec2-ami from this instance.
Additionally, they need to launch a new EC2 instance named datacenter-ec2-new using this AMI.
Update the main.tf file (do not create a different or separate.tf file) to provision an AMI and then launch an EC2 Instance from that AMI.

Create an outputs.tf file to output the following values:

KKE_ami_id for the AMI ID you created.
KKE_new_instance_id for the EC2 instance ID you created.

### Directory Structure
```
06-launch-ec2-from-custom-ami/
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
