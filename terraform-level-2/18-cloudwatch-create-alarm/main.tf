# terraform state mv aws_sns_topic.sns_topic module.sns_topic.aws_sns_topic.this

module "sns_topic" {
  source = "./modules/sns"
  topic_name = var.topic_name
}

module "instance" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
}

module "cw" {
  source = "./modules/cloudwatch"
  alarm_name = var.alarm_name
  threshold = var.threshold
  instance_id = module.instance.instance_id
  sns_arn = module.sns_topic.topic_arn
}