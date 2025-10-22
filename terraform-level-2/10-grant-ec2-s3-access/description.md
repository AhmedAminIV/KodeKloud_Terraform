# Task 10: grant ec2 s3 access

## Objective
The Nautilus DevOps team wants to set up EC2 instances that securely upload application logs to S3 using IAM roles.

1) Create an EC2 instance named nautilus-ec2 that can access an S3 bucket securely. 
2) Create an S3 bucket named nautilus-logs-29910. 
3) Create an IAM role named nautilus-role with a policy named nautilus-access-policy allowing S3 PutObject on the above bucket. 
4) Attach the IAM role to the EC2 instance to allow it to upload logs to the bucket. 
5) Create the main.tf (do not create a separate .tf file) to provision the EC2, s3, role and policy. 
6) Create the variables.tf file to declare the following:

    KKE_BUCKET_NAME: name of the bucket.
    KKE_POLICY_NAME: name of the policy.
    KKE_ROLE_NAME: name of the role.
    Create the terraform.tfvars file to assign values to variables. 

7) Create a data.tf file to fetch the latest Amazon Linux 2 AMI.



### Directory Structure
```
10-grant-ec2-s3-access/
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
