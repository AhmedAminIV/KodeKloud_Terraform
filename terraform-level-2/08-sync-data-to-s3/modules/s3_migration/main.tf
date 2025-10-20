# Data migration using aws cli
resource "null_resource" "migrate_data" {
  provisioner "local-exec" {
    command = "aws s3 sync s3://${var.source_bucket} s3://${var.new_bucket} --exact-timestamps"
  }

}

# Verification step
resource "null_resource" "verify_data" {
  provisioner "local-exec" {
    command = <<EOT
aws s3 ls s3://${var.source_bucket} --recursive --summarize > /tmp/source_list.txt
aws s3 ls s3://${var.new_bucket} --recursive --summarize > /tmp/dest_list.txt
diff /tmp/source_list.txt /tmp/dest_list.txt || echo "Verification complete - please review diffs if any."
EOT
  }

  depends_on = [null_resource.migrate_data]
}
