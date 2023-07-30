provider "aws" {
  access_key = "AKIA3BALKX5BKCLNSZKX" //purushc user
  secret_key = "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"
  region     = "ap-south-1" //cts acct - mumbai region
}

resource "aws_iam_user" "iam" {
  for_each = toset(["user-0", "user-01", "user-02", "user-03"])
  name = each.key
}