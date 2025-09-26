variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ec2_name" {
  description = "ec2 instance name"
  type = string
  default = "xfusion-ec2"
}

variable "ami" {
  description = "ec2 image id"
  type = string
  default = "ami-0c101f26f147fa7fd"
}

variable "ec2_type" {
  description = "ec2 instance type"
  type = string
  default = "t2.nano"
}

variable "ec2_sg" {
  description = "ec2 instance security group id"
  type = string
  default = "sg-850da2e332857e09b"
}