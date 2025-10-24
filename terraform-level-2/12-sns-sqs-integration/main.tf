# --- SNS Topic Module ---
module "sns_topic" {
  source = "./modules/sns"
  topic_name = var.sns_topic_name
}

# --- SQS Queue Module ---
module "sqs_queue" {
  source     = "./modules/sqs"
  queue_name = var.sqs_queue_name
}

# --- SNS Subscription (connect SNS → SQS) ---
resource "aws_sns_topic_subscription" "sqs_subscription" {
  topic_arn = module.sns_topic.topic_arn
  protocol  = "sqs"
  endpoint  = module.sqs_queue.queue_arn

  # Allow SNS to publish to SQS
  depends_on = [aws_sqs_queue_policy.allow_sns_to_sqs]
}

# --- Policy to Allow SNS to Send Messages to SQS ---
resource "aws_sqs_queue_policy" "allow_sns_to_sqs" {
  queue_url = module.sqs_queue.queue_url

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = { Service = "sns.amazonaws.com" }
        Action = "SQS:SendMessage"
        Resource = module.sqs_queue.queue_arn
        Condition = {
          ArnEquals = {
            "aws:SourceArn" = module.sns_topic.topic_arn
          }
        }
      }
    ]
  })
}