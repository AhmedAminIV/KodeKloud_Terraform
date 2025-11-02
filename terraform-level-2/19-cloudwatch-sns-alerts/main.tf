module "sns" {
  source     = "./modules/sns"
  topic_name = var.topic_name
}

module "cw" {
  source     = "./modules/cloudwatch"
  alarm_name = var.alarm_name
  threshold  = var.threshold
  sns_arn    = module.sns.topic_arn
}
