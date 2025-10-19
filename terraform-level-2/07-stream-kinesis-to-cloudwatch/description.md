# Task 07: stream kinesis to cloudwatch

## Objective
As a member of the Nautilus DevOps Team, perform the following tasks using Terraform:

1) Create a Kinesis Data Stream: Name the stream nautilus-kinesis-stream with a shard count of 1. 
2) Enable Monitoring: Enable shard-level metrics for the stream to track ingestion and throughput errors. 
3) Create a CloudWatch Alarm: Name the alarm nautilus-kinesis-alarm and monitor the WriteProvisionedThroughputExceeded metric. The alarm should trigger if the metric exceeds a threshold of 1. 
4) Ensure Alerting: Configure the CloudWatch alarm to detect write throughput issues exceeding provisioned limits. 
5) Create the main.tf file (do not create a separate .tf file) to provision the Kinesis stream, CloudWatch alarm, and ensure alerting. 
6) Create the outputs.tf file with the following variable names to output:
-  kke_kinesis_stream_name for the Kinesis stream name.
-  kke_kinesis_alarm_name for the CloudWatch alarm name.


### Directory Structure
```
07-stream-kinesis-to-cloudwatch/
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
