terraform {
  backend "s3" {
    bucket = "terraform-learn-bucket"
    key    = "network/terraform.tfstate"//path where the tf state file will be stored
    region = "ap-south-1"
    dynamodb_table = "terraform-state-locking"
  }
}