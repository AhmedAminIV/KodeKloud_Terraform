resource "aws_cloudwatch_metric_alarm" "this" {
  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = var.threshold

  alarm_description = "Triggers when Ec2's CPU utilization exceeds threshold limits."

  dimensions = {
    InstanceId = var.instance_id
  }

  treat_missing_data = "notBreaching"
  actions_enabled    = true

  alarm_actions = [var.sns_arn]
}
