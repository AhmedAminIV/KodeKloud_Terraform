# Task: Launch an EC2 Instance using Terraform

For this task, create an EC2 instance using Terraform with the following requirements:

1- The name of the instance must be datacenter-ec2.
2- Use the Amazon Linux ami-0c101f26f147fa7fd to launch this instance.
3- The Instance type must be t2.micro.
4- Create a new RSA key named datacenter-kp.
5- Attach the default (available by default) security group.

This folder contains Terraform code to **Launch an EC2 Instance using Terraform**.

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
