variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "instance name"
  type        = string
  default     = "datacenter-ec2"
}

variable "ami_id" {
  description = "Amazon Linux AMI id"
  type        = string
  default     = "ami-0c101f26f147fa7fd"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key name"
  type        = string
  default     = "datacenter-kp"
}