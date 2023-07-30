resource "aws_instance" "myec2_1" {
  ami           = "ami-051ed863837a0b1b6"
  instance_type = var.instancetype
}

resource "aws_instance" "myec2_2" {
  ami           = "ami-051ed863837a0b1b6"
  instance_type = var.instancetype
}