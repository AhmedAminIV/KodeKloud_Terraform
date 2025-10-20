resource "aws_s3_bucket" "new_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
  }
}

resource "aws_s3_bucket_acl" "new_bucket_acl" {
  bucket = aws_s3_bucket.new_bucket.id
  acl    = var.acl
}