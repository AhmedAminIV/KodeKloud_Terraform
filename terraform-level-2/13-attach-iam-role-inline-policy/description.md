# Task 13: attach iam role inline policy

## Objective
The Nautilus DevOps team is setting up IAM-based access control for internal AWS resources.
They need to create an IAM Role and an IAM Policy using Terraform and attach the policy to the role.

1) Create an IAM Role named xfusion-role. 
2) Create an IAM Policy named xfusion-policy that allows listing EC2 instances. 
3) Attach the policy to the role 
4) Create the main.tf file (do not create a separate .tf file) to provision a Role, policy and attach it. 
5) Use the variables.tf file with the following:

    KKE_ROLE_NAME: name of the role.
    KKE_POLICY_NAME: name of the policy.

6) Use terraform.tfvarsfile to input the role and policy names. 
7) Use outputs.tf file to output the following:
    
    kke_iam_role_name: name of the role created.
    kke_iam_policy_name: name of the policy ceated.



### Directory Structure
```
13-attach-iam-role-inline-policy/
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
