# IAM Role for EC2
resource "aws_iam_role" "this" {
  name = var.role_name

  assume_role_policy = jsonencode(local.ec2_role_body)
}

# IAM Policy for S3 PutObject
resource "aws_iam_policy" "this" {
  name   = var.policy_name
  policy = jsonencode(local.s3_put_policy)
}

# Attach Policy to Role
resource "aws_iam_role_policy_attachment" "attach" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this.arn
}

# Create Instance Profile
resource "aws_iam_instance_profile" "this" {
  name = "${var.role_name}-instance-profile"
  role = aws_iam_role.this.name
}