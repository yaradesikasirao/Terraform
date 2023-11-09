## create vpc and with 4 subnets without variables

 resource "aws_vpc" "kasi" {
  cidr_block = "192.168.0.0/16"

   tags = {
     Name = "kasi"
   }
 }


## terraform state mv aws_subnet.one aws_subnet.web

 resource "aws_subnet" "one" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "us-west-2a"
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "one"
  } 

 }

 ###  terraform state mv aws_subnet.two aws_subnet.app

 resource "aws_subnet" "two" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "us-west-2b"
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "two"
  } 

 }


### terraform state rm aws_subnet.db

  resource "aws_subnet" "db" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "us-west-2b"
  cidr_block = "192.168.2.0/24"

  tags = {
    Name = "db"
  } 

 }