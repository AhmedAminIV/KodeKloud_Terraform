variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 Instance"
  type        = string
}

variable "new_instance_name" {
  description = "Name tag for the new EC2 Instance"
  type        = string
}

variable "sg_ids" {
  description = "List of security groups attached to the ec2 instance"
  type        = list(string)
}

variable "ami_name" {
  description = "Name for the AMI created from EC2"
  type        = string
}