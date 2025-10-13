# Task 01: create vpc and subnet

## Objective
Provision a VPC and Subnet where the Subnet explicitly depends on the VPC using Terraform's `depends_on` argument.

## Key Points
- VPC Name: from variable `KKE_VPC_NAME`
- Subnet Name: from variable `KKE_SUBNET_NAME`
- Region: `us-east-1`
- Explicit dependency ensures Terraform builds the VPC before the Subnet.

## Files
- `main.tf`: Defines VPC and Subnet.
- `variables.tf`: Holds variable definitions.
- `terraform.tfvars`: Contains variable values.
- `outputs.tf`: Exposes names for verification.

### Directory Structure
```
01-create-vpc-and-subnet/
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
