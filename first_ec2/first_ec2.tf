provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-051f7e7f6c2f40dc1"
  instance_type = "t2.micro"
  tags = {
       "name" = "nameTF"
     }
}

output "ec2_address" {
  value = aws_instance.myec2.public_ip
}