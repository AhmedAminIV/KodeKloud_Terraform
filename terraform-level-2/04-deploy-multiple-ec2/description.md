# Task 04: deploy multiple ec2

## Objective
The Nautilus DevOps team wants to provision multiple EC2 instances in AWS using Terraform.
Each instance should follow a consistent naming convention and be deployed using a modular and scalable setup.

Use Terraform to:

Create 3 EC2 instances using the count parameter.
Name each EC2 instance with the prefix xfusion-instance (e.g., xfusion-instance-1).
Instances should be t2.micro.
The key named should be xfusion-key.
Create main.tf file (do not create a separate .tf file) to provision these instances.

Use variables.tf file with the following:

KKE_INSTANCE_COUNT: number of instances.
KKE_INSTANCE_TYPE: type of the instance.
KKE_KEY_NAME: name of key used.
KKE_INSTANCE_PREFIX: name of the instnace.
Use the locals.tf file to define a local variable named AMI_ID that retrieves the latest Amazon Linux 2 AMI using a data source.
Use terraform.tfvars to assign values to the variables.

Use outputs.tf file to output the following:

kke_instance_names: names of the instances created.


### Directory Structure
```
04-deploy-multiple-ec2/
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
