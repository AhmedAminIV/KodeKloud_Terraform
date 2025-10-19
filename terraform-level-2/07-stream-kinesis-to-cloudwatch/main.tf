# ---------------------------------
# Module: Kinesis + CloudWatch Alarm
# ---------------------------------
module "kinesis_monitoring" {
  source              = "./modules/kinesis_monitoring"
  kinesis_stream_name = var.kinesis_stream_name
  shard_count         = var.shard_count
  alarm_name          = var.alarm_name
  threshold           = var.threshold
}