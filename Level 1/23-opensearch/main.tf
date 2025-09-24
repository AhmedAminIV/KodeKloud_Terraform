
resource "aws_opensearch_domain" "devops_es" {
  domain_name    = var.domain_name

  cluster_config {
    instance_type = var.instance_type
    instance_count = var.instance_count
  }

  ebs_options {
    ebs_enabled = true
    volume_size = var.volume_size
    volume_type = "gp3"
  }

  tags = {
    Domain = "Kode-Kloud-Domain"
  }
}