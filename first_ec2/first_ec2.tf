provider "aws" {
  access_key = "" 
  secret_key = ""
  region     = "ap-south-1"
}

resource "aws_instance" "myec2" {
  subnet_id = "subnet-0466965d86d3e56d4"
  ami           = "ami-057752b3f1d6c4d6c"
  instance_type = "t2.micro"
}

output "ec2_address" {
  value = aws_instance.myec2.public_ip
}