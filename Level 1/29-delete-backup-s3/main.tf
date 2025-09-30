# Step 1: Copy contents of the bucket to local
resource "null_resource" "copy_s3_to_local" {
  provisioner "local-exec" {
    command = "aws s3 cp s3://${var.bucket_name} /opt/s3-backup/ --recursive --region us-east-1"
  }
}

# Step 2: Delete the bucket (first empty it, then remove it)
resource "null_resource" "delete_s3_bucket" {
  depends_on = [null_resource.copy_s3_to_local]

  provisioner "local-exec" {
    command = <<EOT
      aws s3 rm s3://${var.bucket_name} --recursive --region us-east-1
      aws s3api delete-bucket --bucket ${var.bucket_name} --region us-east-1
    EOT
  }
}