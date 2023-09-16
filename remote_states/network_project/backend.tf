terraform {
  backend "s3" {
    bucket = "terraform-learn-bucket"
    key    = "network/eip.tfstate"//path where the tf state file will be stored
    region = "ap-south-1"
  }
}