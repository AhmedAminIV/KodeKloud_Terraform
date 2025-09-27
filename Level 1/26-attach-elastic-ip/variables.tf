variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "Ec2 instance amazon machine image in the us east"
  type        = string
  default     = "ami-0c101f26f147fa7fd"
}

variable "instance_type" {
  description = "Ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet" {
  description = "subnet which the ec2 is placed at"
  type        = string
  default     = "subnet-a92cb4f7b9591ded5"
}

variable "ec2_sg" {
  description = "Security group attached to the instance"
  type        = string
  default     = "sg-678fef9fd327e6197"
}

variable "instance_name" {
  description = "Ec2 instance name"
  type        = string
  default     = "datacenter-ec2"
}

variable "elastic_ip" {
  description = "Elastic Ip id"
  type = string
  default = "datacenter-ec2-eip"
}