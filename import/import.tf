//Not tested
provider "aws" {
  access_key = "" //purushc user
  secret_key = ""
  region     = "ap-south-1" //should match the region where the manually created resources are present
}

import {
    id = "sg-01212121212"//id of the resource to be imported, say Sec grp
    //resource block details to be used in the new file
    //mysg - name of the resource block where imported details are placed
    to = aws_security_group.mysg
}