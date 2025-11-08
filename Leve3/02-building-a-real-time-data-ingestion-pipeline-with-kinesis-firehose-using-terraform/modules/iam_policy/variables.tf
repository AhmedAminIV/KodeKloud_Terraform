data "aws_iam_policy_document" "firehose_policy" {
  statement {
    effect = "Allow"
    actions = [
      "s3:AbortMultipartUpload",
      "s3:GetBucketLocation",
      "s3:GetObject",
      "s3:ListBucket",
      "s3:ListBucketMultipartUploads",
      "s3:PutObject"
    ]
    resources = [
      var.s3_arn,
      "${var.s3_arn}/*"
    ]
  }

  # Allow CloudWatch logging for troubleshooting
  statement {
    effect = "Allow"
    actions = [
      "logs:PutLogEvents"
    ]
    resources = ["*"]
  }
}

variable "s3_arn" {
  description = "policy resource s3 arn to allow actions for"
  type = string
}

variable "role_name" {
  description = "role name which the policy will be attached to"
  type = string
}