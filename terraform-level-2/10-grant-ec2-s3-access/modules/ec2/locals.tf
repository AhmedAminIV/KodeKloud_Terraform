locals {
  ec2_user_data = <<-EOF
    #!/bin/bash
    echo "Hello from Nautilus EC2!" > /tmp/message.txt
    aws s3 cp /tmp/message.txt s3://${var.instance_name}-logs/
  EOF
}