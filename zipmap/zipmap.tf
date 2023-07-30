provider "aws" {
  access_key = "AKIA3BALKX5BKCLNSZKX" //purushc user
  secret_key = "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"
  region     = "ap-south-1" //cts acct - mumbai region
}

resource "aws_iam_user" "lb" {
    name = "iamuser.${count.index}"
    count = 3
    path = "/system/"
}

output "name" {
    value = aws_iam_user.lb[*].name
}

output "arns" {
    value = aws_iam_user.lb[*].arn
}

output "combined" {
    value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}