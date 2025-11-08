resource "aws_kinesis_firehose_delivery_stream" "this" {
  name        = var.stream_name
  destination = "extended_s3"

  extended_s3_configuration {
    role_arn           = var.role_arn
    bucket_arn         = var.bucket_arn
    buffering_size     = var.buffering_size
    buffering_interval = var.buffering_interval
    compression_format = "UNCOMPRESSED"
    cloudwatch_logging_options {
      enabled         = true
      log_group_name  = "/aws/kinesisfirehose/${var.stream_name}"
      log_stream_name = "S3Delivery"
    }

    processing_configuration {
      enabled = true
      processors {
        type = "AppendDelimiterToRecord"

        parameters {
          parameter_name  = "Delimiter"
          parameter_value = "\n"
        }
      }
    }
  }
}
