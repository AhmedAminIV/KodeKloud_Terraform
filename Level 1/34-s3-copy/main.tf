resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
  }
}

resource "aws_s3_bucket_acl" "s3_acl" {

  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}

resource "aws_s3_object" "dc_file" {
  bucket = var.bucket_name
  key    = var.object_name      # object name in the s3 bucket
  source = var.object_path      # path on host
}
