provider "aws" {
  access_key = "AKIA3BALKX5BKCLNSZKX" //purushc user
  secret_key = "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"
  region     = "ap-south-1" //cts acct - mumbai region
}

resource "aws_security_group" "var_demo" {
    name        = "var_demo"
    vpc_id      = "vpc-02fbfb14aae4c64c9"

    ingress {
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = [var.vpn_ip]
    }

    ingress {
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = [var.vpn_ip]
    }

    ingress {
        from_port        = 53
        to_port          = 53
        protocol         = "tcp"
        cidr_blocks      = [var.vpn_ip]
    }
}