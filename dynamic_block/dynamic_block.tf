provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-south-1"
}

variable "sg_ports" {
  type = list(number)
  description = "list of ingress ports"
  default = [ 8200]
}

resource "aws_security_group" "dynamic_sg" {
  name        = "dynamic_block_test"
  description = "To test dynamic block"
  vpc_id      = "vpc-02fbfb14aae4c64c9"

    dynamic "ingress" {
        for_each = var.sg_ports
        iterator = port
        content {
            from_port = port.value
            to_port = port.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

}
