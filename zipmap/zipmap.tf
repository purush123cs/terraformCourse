provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-south-1"
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