locals {
  port = 443
}

resource "aws_security_group" "ec2-sg" {
  name        = "myec2-sg"
  vpc_id      = "vpc-02fbfb14aae4c64c9"

  ingress {
    description      = "Inbound"
    from_port        = local.port
    to_port          = local.port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

output "sg_id" {
  value = aws_security_group.ec2-sg.id
}