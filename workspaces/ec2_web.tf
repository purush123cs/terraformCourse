provider "aws" {
  access_key = "AKIA3BALKX5BKCLNSZKX" //purushc user
  secret_key = "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"
  region     = "ap-south-1" //cts acct - mumbai region
}

resource "aws_instance" "myec2" {
  subnet_id = "subnet-0466965d86d3e56d4"
  ami           = "ami-057752b3f1d6c4d6c"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
    type = map

    default = {
        default = "t2.nano"
        dev = "t2.micro"
        prd = "t2.large"
    }
}