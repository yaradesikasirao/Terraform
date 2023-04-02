 ## create vpc and with 4 subnets without variables

 resource "aws_vpc" "kasi" {
  cidr_block = "192.168.0.0/16"

   tags = {
     Name = "kasi"
   }
 }

 resource "aws_subnet" "db" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "us-west-2a"
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "db"
  } 

 }

 resource "aws_subnet" "db1" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "us-west-2b"
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "db1"
  } 

 }

 resource "aws_subnet" "app" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "us-west-2a"
  cidr_block = "192.168.2.0/24"

  tags = {
    Name = "app"
  } 

 }


 resource "aws_subnet" "app1" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "us-west-2b"
  cidr_block = "192.168.3.0/24"

  tags = {
    Name = "app1"
  } 

 }