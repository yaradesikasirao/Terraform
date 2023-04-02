 ## create vpc and subnet without variables

 resource "aws_vpc" "kasi" {
  cidr_block = "192.168.0.0/16"

   tags = {
     Name = "kasi"
   }
 }

 resource "aws_subnet" "db" {
  count = 4
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "us-west-2a"
  cidr_block = cidrsubnet("192.168.0.0/16" , 8 ,count.index )

  tags = {
    Name = "db${count.index + 1}"
    ###### Name = "db(count.index + 1)"
  } 

 }