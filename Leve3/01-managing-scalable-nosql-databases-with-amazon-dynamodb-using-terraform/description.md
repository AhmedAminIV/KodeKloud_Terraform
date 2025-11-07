# Task 19: cloudwatch sns alerts

## Objective
The Nautilus DevOps team is developing a simple 'To-Do' application using DynamoDB to store and manage tasks efficiently.
The team needs to create a DynamoDB table to hold tasks,
each identified by a unique task ID. Each task will have a description and a status,
which indicates the progress of the task (e.g., 'completed' or 'in-progress').

Your task is to:

1) Create a DynamoDB table named datacenter-tasks with a primary key called taskId (string).

2) Insert the following tasks into the table:

    Task 1: taskId: 1, description: Learn DynamoDB, status: completed

    Task 2: taskId: 2, description: Build To-Do App, status: in-progress

3) Verify that Task 1 has a status of completed and Task 2 has a status of in-progress.

4) Create main.tf(do not create a separate .tf file) to provision a dynamo_db table and insert tasks.

5) Create a variables.tf file with the following:

    KKE_TABLE_NAME: name of the dynamo_db table.

6) Use terraform.tfvars file to input the name of the dynamo_db table.

7) Use outputs.tf file for the following:

    kke_dynamodb_table_name: name of the dynamo_db table created.

### Directory Structure
```
19-cloudwatch-sns-alerts/
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
