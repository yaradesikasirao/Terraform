provider "aws" {
  region = "ap-south-1"
}
resource "aws_vpc" "kasi" { # vpc create go to vpc subnet terrraform 
  cidr_block = "192.168.0.0/16"
  tags = {
    "Name" = "kasi"
  }
}