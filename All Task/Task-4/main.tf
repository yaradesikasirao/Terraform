 ## create vpc and subnet without variables

 resource "aws_vpc" "kasi1" {
  count = 2
  cidr_block = "192.${count.index}.0.0/16"

   tags = {
     Name = "kasi1${count.index + 1}"
   }
 }

 resource "aws_subnet" "db" {
  count = 4
  vpc_id = aws_vpc.kasi1[0].id  
  availability_zone = "us-west-2a"
  cidr_block = cidrsubnet("192.0.0.0/16" , 8 ,count.index )

  tags = {
    Name = "db${count.index + 1}"
    ###### Name = "db(count.index + 1)"
  } 

 }