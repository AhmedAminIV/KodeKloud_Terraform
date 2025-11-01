variable "ami_id" {
  description = "AWS AMI id for the EC2 Instances"
  type = string
}

variable "instance_type" {
  description = "Instance type"
  type = string
}

variable "instance_name" {
  description = "Name tag for the new EC2 Instance"
  type = string
}