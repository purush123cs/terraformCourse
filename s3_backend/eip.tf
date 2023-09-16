//create Elastic IP
resource "aws_eip" "lb" {
  domain = "vpc"
}
