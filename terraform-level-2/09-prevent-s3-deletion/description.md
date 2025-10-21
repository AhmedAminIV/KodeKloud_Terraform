# Task 09: prevent s3 deletion

## Objective
To ensure secure and accidental-deletion-proof storage,
the DevOps team must configure an S3 bucket using Terraform with strict lifecycle protections.
The goal is to create a bucket that is dynamically named and protected from being destroyed by mistake.
Please complete the following tasks:

1) Create an S3 bucket named nautilus-s3-4681. 
2) Apply the prevent_destroy lifecycle rule to protect the bucket. 
3) Create the main.tf file (do not create a separate .tf file) to provision a s3 bucket with prevent_destroy lifecycle rule. 
4) Use the variables.tf file with the following:
KKE_BUCKET_NAME: name of the bucket. 
5) Use the terraform.tfvars file to input the name of the bucket. 
6) Use the outputs.tffile with the following:
s3_bucket_name: name of the created bucket.



### Directory Structure
```
09-prevent-s3-deletion/
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
