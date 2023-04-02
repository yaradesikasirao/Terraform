 ## create vpc and subnet  variables

 resource "aws_vpc" "kasi" {
  cidr_block = var.aws_vpc_cidr

   tags = {
     Name = var.vpc_name
   }
 }

 resource "aws_subnet" "db" {
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "${var.aws_region}${var.availability_zone}"
  cidr_block = var.aws_subnet_cidr

  tags = {
    Name = var.subnet_names
  } 

 }