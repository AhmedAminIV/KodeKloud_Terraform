variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ec2_name" {
  description = "Name tag for the ec2 instance"
  type = string
  default = "devops-ec2"
}

variable "ami" {
  description = "AMI for the ec2 instance"
  type = string
  default = "ami-0c101f26f147fa7fd"
}

variable "flavor" {
  description = "type of the ec2 instance"
  type = string
  default = "t2.micro"
}

variable "sg" {
  description = "the security group id"
  type = string
  default = "sg-920ddb4d9ad8617e4"
}