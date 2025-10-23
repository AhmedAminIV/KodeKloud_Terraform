# Task 11: s3 lifecycle policy

## Objective
The Nautilus DevOps team is implementing lifecycle policies to manage object storage efficiently in AWS.
They want to create an S3 bucket with a specific lifecycle rule
that transitions objects to infrequent access (IA) storage after 30 days and deletes them after 365 days.

1) Create an S3 bucket named xfusion-lifecycle-3212. 
2) Enable the S3 Versioning on the bucket. 
3) Add a lifecycle rule named xfusion-lifecycle-rule with:
4) Transition to STANDARD_IA storage class after 30 days. 
5) Expiration of objects after 365 days. 
6) Use the main.tf file (do not create a separate .tf file) to provision the S3 bucket. 
7) Use the variable name KKE_bucket_name in the outputs.tf file to output the created bucket name.


### Directory Structure
```
11-s3-lifecycle-policy/
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
