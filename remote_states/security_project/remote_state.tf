data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "terraform-learn-bucket"
    key    = "network/eip.tfstate"//path where the tf state file will be stored
    region = "ap-south-1"    
  }
}