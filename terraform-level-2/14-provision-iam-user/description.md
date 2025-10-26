# Task 14: provision iam user

## Objective
The Nautilus DevOps team is experimenting with Terraform provisioners.
Your task is to create an IAM user and use a local-exec provisioner to log a confirmation message.

1) Create an IAM user named iamuser_james. 
2) Use a local-exec provisioner with the IAM user resource to log the message KKE iamuser_james has been created successfully! 
to a file called KKE_user_created.log under home/bob/terraform. 
3) Create the main.tf file (do not create a separate .tf file) to provision an IAM user. 
4) Use variables.tf file with the following:
   KKE_USER_NAME: name of the IAM user. 
5) Use terraform.tfvars to input the name of the IAM user.
6) Use outputs.tf file with the following:
   kke_iam_user_name: name of the IAM user.

### Directory Structure
```
14-provision-iam-user/
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
