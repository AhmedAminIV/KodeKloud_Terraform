# --------------------------
# Kinesis Data Stream
# --------------------------
resource "aws_kinesis_stream" "nautilus_stream" {
  name        = var.kinesis_stream_name
  shard_count = var.shard_count

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
    "WriteProvisionedThroughputExceeded",
    "ReadProvisionedThroughputExceeded",
    "IncomingRecords",
    "OutgoingRecords",
  ]

  retention_period = 24

  tags = {
  }
}

# --------------------------
# CloudWatch Alarm
# --------------------------
resource "aws_cloudwatch_metric_alarm" "nautilus_alarm" {
  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "WriteProvisionedThroughputExceeded"
  namespace           = "AWS/Kinesis"
  period              = 60
  statistic           = "Sum"
  threshold           = var.threshold

  alarm_description = "Triggers when Kinesis stream write throughput exceeds provisioned limits."

  dimensions = {
    StreamName = aws_kinesis_stream.nautilus_stream.name
  }

  treat_missing_data = "notBreaching"
  actions_enabled    = true

  alarm_actions = []
}
