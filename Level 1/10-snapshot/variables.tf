variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ebs_AZ" {
  description = "EBS volume availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "ebs_size" {
  description = "EBS volume size in (GBs)"
  type        = number
  default     = 5
}

variable "ebs_type" {
  description = "EBS volume type"
  type        = string
  default     = "gp2"
}

variable "ebs_name" {
  description = "EBS volume name tag"
  type        = string
  default     = "datacenter-vol"
}

variable "snapshot_name" {
  description = "snapshot name tag"
  type        = string
  default     = "datacenter-vol-ss"
}

variable "snapshot_desc" {
  description = "snapshot description"
  type        = string
  default     = "Datacenter Snapshot"
}