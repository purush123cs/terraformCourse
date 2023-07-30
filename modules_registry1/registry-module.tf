provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-south-1"
}

module "ec2_instance_cluster" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.2.1"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami           = "ami-057752b3f1d6c4d6c"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0466965d86d3e56d4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}