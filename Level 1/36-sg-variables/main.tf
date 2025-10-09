resource "aws_security_group" "allow_outbound" {
  name        = var.KKE_sg
  description = "Allow all outbound traffic"

  tags = {
    Name = var.KKE_sg
  }
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_outbound.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
