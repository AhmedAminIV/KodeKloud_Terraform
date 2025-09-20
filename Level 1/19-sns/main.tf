
resource "aws_sns_topic" "devops_notification" {
  name = var.sns_topic_name
}