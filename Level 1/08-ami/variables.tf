variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Instance Name tag"
  type        = string
  default     = "xfusion-ec2"
}

variable "instance_ami" {
  description = "AMI"
  type        = string
  default     = "ami-0c101f26f147fa7fd"
}

variable "ami_name" {
  description = "Name of the AMI"
  type        = string
  default     = "xfusion-ec2-ami"
}