provider "aws" {
  access_key = "AKIA3BALKX5BKCLNSZKX" //purushc user
  secret_key = "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"
  region     = "ap-south-1" //cts acct - mumbai region
}

resource "aws_instance" "myec2" {
  subnet_id = "subnet-0466965d86d3e56d4"
  ami = "ami-0b9ecf71fe947bbdd"
  for_each = {
    key1 = "t2.micro"
    key2 = "t2.medium"
  }
  instance_type = each.value
  key_name = each.key
  tags = {
    Name = each.value
  }

}