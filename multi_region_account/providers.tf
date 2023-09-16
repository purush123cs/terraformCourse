provider "aws" {
  region     = "ap-south-1"
}

provider "aws" {
  alias      = "aws02"
  region     = "us-west-1"
  profile    = "account02"
}