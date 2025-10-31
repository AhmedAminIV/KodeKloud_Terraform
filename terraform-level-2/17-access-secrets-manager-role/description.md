# Task 17: access secrets manager role

## Objective
To enable secure retrieval of secrets,
the Nautilus DevOps team needs to configure access to a secret in AWS Secrets Manager using IAM roles and policies.
The objective is to allow EC2 instances to retrieve secrets securely. Please complete the following tasks:

1) Create a secret in AWS Secrets Manager named xfusion-app-secret with the following secret string:

    {"db_user":"admin","db_pass":"supersecret"}

2) Create an IAM role named xfusion-app-role with EC2 as the trusted entity.
3) Attach an inline IAM policy named xfusion-app-policy that grants permission to retrieve the secret from AWS Secrets Manager. 
4) Use the main.tf file (do not create a separate .tf file) to provision the IAM Role and IAM Policy. 
5) Create the variables.tf file, ensure the following variables are defined in variables.tf file:

    KKE_SECRET_NAME for the secret name.
    KKE_SECRET_VALUE for the secret value.
    KKE_ROLE_NAME for the IAM role name.
    KKE_POLICY_NAME for the IAM policy name.

6) Create the outputs.tf file, and use the following:

    KKE_secret_name: The secret name
    KKE_role_name: The IAM role name
    KKE_policy_name: The IAM policy name

### Directory Structure
```
17-access-secrets-manager-role/
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
