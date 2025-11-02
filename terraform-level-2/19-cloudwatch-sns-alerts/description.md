# Task 19: cloudwatch sns alerts

## Objective
The Nautilus DevOps team is expanding their AWS infrastructure and requires the setup of a CloudWatch alarm 
and SNS integration for monitoring EC2 instances.
The team needs to configure an SNS topic for CloudWatch to publish notifications 
when an EC2 instance’s CPU utilization exceeds 80%.
The alarm should trigger whenever the CPU utilization is greater than 80% and notify the SNS topic to alert the team.

1) Create an SNS topic named devops-sns-topic.
2) Create a CloudWatch alarm named devops-cpu-alarm to monitor EC2 CPU utilization with the following conditions:

    Metric: CPUUtilization
    Threshold: 80%
    Actions enabled
    Alarm actions should be triggered to the SNS topic.
    Ensure that the SNS topic receives notifications from the CloudWatch alarm when it is triggered.

3) Update the main.tf file (do not create a different .tf file) to create SNS Topic and Cloudwatch Alarm.
4) Create an outputs.tf file to output the following values:

    KKE_sns_topic_name for the SNS topic name.
    KKE_cloudwatch_alarm_name for the CloudWatch alarm name.



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
