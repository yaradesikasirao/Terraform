 ## create vpc and subnet without variables

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