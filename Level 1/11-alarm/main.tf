resource "aws_cloudwatch_metric_alarm" "datacenter_alarm" {
  alarm_name                = var.alarm_name
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = var.evaluation_period
  metric_name               = var.metric_name
  namespace                 = "AWS/EC2"
  period                    = var.period
  statistic                 = "Average"
  threshold                 = var.metric_threshold
  alarm_description         = var.alarm_desc
  insufficient_data_actions = []
}