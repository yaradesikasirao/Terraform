

provider "aws" {
    region = "ap-south-1"
}
resource "aws_vpc" "ntier" {                       ### use the terraform provider in that aws vpc subnet
    cidr_block = var.ntier-vpc-rang
    tags = {
        "Name" = "kasi"
    }
    
}