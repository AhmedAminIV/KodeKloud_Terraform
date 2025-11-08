module "s3" {
  source = "./modules/s3"
  bucket_name = var.KKE_S3_BUCKET_NAME
}

module "role" {
  source = "./modules/iam_role"
  role_name = var.KKE_FIREHOSE_ROLE_NAME
}

module "policy" {
  source = "./modules/iam_policy"
  role_name = module.role.role_name
  s3_arn = module.s3.bucket_arn
}

resource "aws_iam_role_policy_attachment" "firehose_policy_attach" {
  role       = module.role.role_name
  policy_arn = module.policy.policy_arn
}

module "firehose" {
  source = "./modules/firehose"
  stream_name = var.KKE_FIREHOSE_STREAM_NAME
  bucket_arn = module.s3.bucket_arn
  role_arn = module.role.role_arn

  depends_on = [aws_iam_role_policy_attachment.firehose_policy_attach]
}

# aws firehose put-record-batch \
# --delivery-stream-name ${var.stream_name} \
# --records '[
# {"Data":"Record_1"},
# {"Data":"Record_2"},
# {"Data":"Record_3"}
# ]'

#  aws s3 ls s3://datacenter-stream-bucket-6147/
