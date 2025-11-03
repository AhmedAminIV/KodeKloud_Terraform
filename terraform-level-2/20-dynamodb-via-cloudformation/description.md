# Task 20: dynamodb via cloudformation

## Objective
The Nautilus DevOps team wants to automate infrastructure provisioning using CloudFormation.
As part of the stack setup, they need to create a DynamoDB table.

1) Create a CloudFormation stack named datacenter-dynamodb-stack. 
2) The stack must create a DynamoDB table named datacenter-cf-dynamodb-table. 
3) Use the main.tf file (do not create a separate .tf file) to provision a CloudFormation stack and DynamoDB table.
4) Make sure to add a lifecycle block in main.tf to ignore changes to the parameters attribute. 
5) Use the variables.tf file with the following variable names:

    KKE_DYNAMODB_TABLE_NAME: Dynamodb table name. 

6) The locals.tf file is already provided and includes the following:

    cf_template_body: A local variable that stores the CloudFormation template body.

7) Use the outputs.tf file to output the following:

    KKE_stack_name: CloudFormation stack name



### Directory Structure
```
20-dynamodb-via-cloudformation/
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
