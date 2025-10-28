# Task 15: iam policy dynamodb access

## Objective
The DevOps team has been tasked with creating a secure DynamoDB table and enforcing fine-grained access control using IAM.
This setup will allow secure and restricted access to the table from trusted AWS services only.

As a member of the Nautilus DevOps Team, your task is to perform the following using Terraform:

1) Create a DynamoDB Table: Create a table named xfusion-table with minimal configuration. 
2) Create an IAM Role: Create an IAM role named xfusion-role that will be allowed to access the table. 
3) Create an IAM Policy: Create a policy named xfusion-readonly-policy that should grant read-only access
   (GetItem, Scan, Query) to the specific DynamoDB table and attach it to the role. 
4) Create the main.tf file (do not create a separate .tf file) to provision the table, role, and policy. 
5) Create the variables.tf file with the following variables:

    KKE_TABLE_NAME: name of the DynamoDB table
    KKE_ROLE_NAME: name of the IAM role
    KKE_POLICY_NAME: name of the IAM policy 

6) Create the outputs.tf file with the following outputs:

    kke_dynamodb_table: name of the DynamoDB table
    kke_iam_role_name: name of the IAM role
    kke_iam_policy_name: name of the IAM policy 

7) Define the actual values for these variables in the terraform.tfvars file. 
8) Ensure that the IAM policy allows only read access and restricts it to the specific DynamoDB table created.


### Directory Structure
```
15-iam-policy-dynamodb-access/
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
