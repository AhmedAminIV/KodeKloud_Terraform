# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  vpc_security_group_ids = [
    "sg-2a2783fd41de42576"
  ]

  tags = {
    Name = var.instance_name
  }
}

data "aws_instance" "xfusion_ec2" {
  filter {
    name   = "tag:Name"
    values = ["xfusion-ec2"]
  }
}

resource "aws_ami_from_instance" "xfusion_ec2_ami" {
  name               = var.ami_name
  source_instance_id = data.aws_instance.xfusion_ec2.id
  depends_on = [data.aws_instance.xfusion_ec2]

}