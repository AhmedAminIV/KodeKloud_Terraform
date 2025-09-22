
resource "aws_cloudwatch_log_group" "datacenter_log_group" {
  name = var.datacenter_group_name
  retention_in_days = var.log_retention_days

}

resource "aws_cloudwatch_log_stream" "datacenter_log_stream" {
  name           = var.log_stream_name
  log_group_name = aws_cloudwatch_log_group.datacenter_log_group.name
}
