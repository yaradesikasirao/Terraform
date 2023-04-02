 ## create vpc and with 4 subnets  variables

 resource "aws_vpc" "kasi" {
  cidr_block = var.aws_vpc_cidr

   tags = {
     Name = var.vpc_name
   }
 }

##### 4 subnets with variables

 resource "aws_subnet" "db" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "${var.region}${var.availability_zone}"
  cidr_block = var.aws_subnet_db

  tags = {
    Name = var.aws_subnet_name
  } 

 }

 resource "aws_subnet" "db-1" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "${var.region-1}${var.availability_zone-1}"
  cidr_block = var.aws_subnet_db-1

  tags = {
    Name = var.aws_subnet_name-1
  } 

 }


resource "aws_subnet" "app" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "${var.region-2}${var.availability_zone-2}"
  cidr_block = var.aws_subnet_app

  tags = {
    Name = var.aws_subnet_name-2
  } 

 }



 resource "aws_subnet" "app-1" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "${var.region-3}${var.availability_zone-3}"
  cidr_block = var.aws_subnet_app-1

  tags = {
    Name = var.aws_subnet_name-3
  } 

 }