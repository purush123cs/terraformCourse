module "sgmodule" {
    source = "../../modules/sg"
}

resource "aws_instance" "myec2" {
  subnet_id = "subnet-0466965d86d3e56d4"
  ami           = "ami-057752b3f1d6c4d6c"
  instance_type = "t2.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]
}