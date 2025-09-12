resource "aws_ebs_volume" "k8s_volume" {
  availability_zone = var.ebs_AZ
  size              = var.ebs_size
  type              = var.ebs_type

  tags = {
    Name        = var.ebs_name
  }
}

resource "aws_ebs_snapshot" "datacenter_snapshot" {
  volume_id = aws_ebs_volume.k8s_volume.id
  description = var.snapshot_desc

  tags = {
    Name = var.snapshot_name
  }
}