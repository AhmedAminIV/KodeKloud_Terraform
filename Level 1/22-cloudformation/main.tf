# CloudFormation stack
resource "aws_cloudformation_stack" "datacenter_stack" {
  name          = var.stack_name
  template_body = <<STACK
{
  "AWSTemplateFormatVersion": "2010-09-09",
  "Description": "CloudFormation stack with S3 bucket and versioning enabled",
  "Resources": {
    "DatacenterBucket": {
      "Type": "AWS::S3::Bucket",
      "Properties": {
        "BucketName": "${var.bucket_name}",
        "VersioningConfiguration": {
          "Status": "Enabled"
        }
      }
    }
  }
}
STACK
}

