data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-22.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

locals {
  AMI_ID = data.aws_ami.ubuntu.id
}