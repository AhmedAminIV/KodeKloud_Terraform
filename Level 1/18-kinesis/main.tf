resource "aws_kinesis_stream" "stream" {
  name             = var.stream_name
  shard_count      = var.stream_shard_count
  retention_period = 24

  stream_mode_details {
    stream_mode = "PROVISIONED"
  }

}

