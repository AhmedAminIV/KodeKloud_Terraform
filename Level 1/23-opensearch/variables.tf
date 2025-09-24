variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "AWS OpenSearch domain name"
  type = string
  default = "devops-es"
}

variable "instance_type" {
  description = "OpenSearch instance type"
  type        = string
  default     = "t3.small.search"
}

variable "instance_count" {
  description = "Number of instances in the domain"
  type        = number
  default     = 1
}

variable "volume_size" {
  description = "EBS volume size for data nodes (in GiB)"
  type        = number
  default     = 10
}
