output "snapshot_id" {
  description = "ID of the created snapshot"
  value       = aws_ebs_snapshot.datacenter_snapshot.id
}