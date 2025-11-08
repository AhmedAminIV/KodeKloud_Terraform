resource "aws_iam_policy" "this" {
  name   = "${var.role_name}-policy"
  policy = data.aws_iam_policy_document.firehose_policy.json
}