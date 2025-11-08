# Task 19: cloudwatch sns alerts

## Objective
The DevOps team needs to create a data ingestion pipeline using AWS Kinesis Firehose to deliver streaming data into an S3 bucket.
The Firehose delivery stream must assume an IAM role using STS, deliver data to an S3 bucket,
and add a newline delimiter after each record.
Buffering settings should be configured to deliver data either when the buffer reaches 5 MB or after 300 seconds,
whichever comes first.

You are required to complete this task using Terraform.

Task Requirements:

1) Create an S3 bucket named datacenter-stream-bucket-6147 using Terraform.

2) Create an IAM role named firehose-sts-role and policy that allows Kinesis Firehose to put objects into the S3 bucket.

3) The Firehose delivery stream must use the IAM role via STS assume role.

4) Use depends_on in the Firehose resource to ensure it waits for the IAM role policy attachment.

5) Create a Firehose delivery stream named datacenter-firehose-stream to deliver data to the S3 bucket.

6) Configure buffering with size 5 MB and interval 300 seconds.

7) Enable record processing by setting the Delimiter parameter to \n to append a newline after each record.

8) Create main.tf file to create a S3 bucket,IAM role and Firehose delivery stream.

9) Use variables.tf file with the following variables:

   KKE_S3_BUCKET_NAME: name of the bucket.
   KKE_FIREHOSE_STREAM_NAME: name of the firehose stream.
   KKE_FIREHOSE_ROLE_NAME : name of the firehose role

10) Use outputs.tf file to output the following:

   kke_firehose_stream_name: name of the firehose stream created.
   kke_s3_bucket_name: name of the bucket created.
   kke_firehose_role_arn: arn of the created firehose role.

11) Send test data to the Firehose stream and verify that each record in the S3 files ends with a newline character.


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
