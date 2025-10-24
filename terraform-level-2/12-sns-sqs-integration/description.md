# Task 12: sns sqs integration

## Objective
The Nautilus DevOps team is implementing a messaging system in AWS. They want to create an SNS topic and an SQS queue.
The team needs to subscribe the SQS queue to the SNS topic so that any messages sent to the SNS topic,
will be delivered to the SQS queue.

1) Create an SNS topic named nautilus-sns-topic. 
2) Create an SQS queue named nautilus-sqs-queue. 
3) Subscribe the SQS queue to the SNS topic. 
4) Use the main.tf file (do not create a separate .tf file) to provision the SNS topic and SQS queue. 
5) Create the outputs.tf file, and use the following:
   1) The ARN of the SNS topic using the output variable kke_sns_topic_arn. 
   2) The URL of the SQS queue using the output variable kke_sqs_queue_url.

### Directory Structure
```
12-sns-sqs-integration/
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
