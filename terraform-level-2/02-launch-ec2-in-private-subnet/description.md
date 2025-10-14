# Task 02: launch ec2 in private subnet

## Objective

Create a VPC named datacenter-priv-vpc with the CIDR block 10.0.0.0/16.

Create a subnet named datacenter-priv-subnet inside the VPC with the CIDR block 10.0.1.0/24 and auto-assign IP option must not be enabled.

Create an EC2 instance named datacenter-priv-ec2 inside the subnet and instance type must be t2.micro.

Ensure the security group of the EC2 instance allows access only from within the VPC's CIDR block.

Create the main.tf file (do not create a separate .tf file) to provision the VPC, subnet and EC2 instance.

Use variables.tf file with the following variable names:

KKE_VPC_CIDR for the VPC CIDR block.
KKE_SUBNET_CIDR for the subnet CIDR block.
Use the outputs.tf file with the following variable names:

KKE_vpc_name for the name of the VPC.
KKE_subnet_name for the name of the subnet.
KKE_ec2_private for the name of the EC2 instance.

### Directory Structure
```
02-launch-ec2-in-private-subnet/
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
