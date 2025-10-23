resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    Name = var.bucket_name
  }
}

# Enable Versioning
resource "aws_s3_bucket_versioning" "this" {
  count  = var.enable_versioning ? 1 : 0
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Lifecycle Rule
resource "aws_s3_bucket_lifecycle_configuration" "this" {
  count  = var.create_lifecycle ? 1 : 0
  bucket = aws_s3_bucket.this.id

  rule {
    id     = var.lifecycle_rule_id
    status = "Enabled"

    filter {
      prefix = ""
    }

    transition {
      days          = var.s3_IA_transition_after
      storage_class = "STANDARD_IA"
    }

    expiration {
      days = var.s3_object_expiration
    }
  }
}