

provider "aws" {
    region = "ap-south-1"
}
resource "aws_vpc" "ntier" {                       ### use the terraform provider in that aws vpc subnet
    cidr_block = var.ntier-vpc-rang
    tags = {
        "Name" = "kasi"
    }
    
}

resource "aws_subnet" "App1" {
     cidr_block = var.ntier-app1-cidr
     availability_zone =  "${var.region}a"
     vpc_id = aws_vpc.ntier.id    ## vpc id it is required for excute
      tags = {
        "Name" = "App1"
    }
}

resource "aws_subnet" "App2" {
      cidr_block = var.ntier-app2-cidr
      availability_zone = "${var.region}b"
      vpc_id = aws_vpc.ntier.id
       tags = {
        "Name" = "App2"
    }
}