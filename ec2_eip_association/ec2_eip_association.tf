provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-west-1"
}

//create EC2 instance
resource "aws_instance" "myec2" {
  ami           = "ami-051ed863837a0b1b6"
  instance_type = "t2.micro"
}

//create Elastic IP
resource "aws_eip" "lb" {
  domain = "vpc"
}

//associate Elastic IP to EC2 instance
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}

//add Elastic IP to a security group that you create
resource "aws_security_group" "allow_tls" {
  name = "test-security-group"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
  }
}