 ## create vpc and subnet with variables

 resource "aws_vpc" "kasi" {
  cidr_block = var.aws_vpc_cidr

   tags = {
     Name = var.vpc_name
   }
 }

 resource "aws_subnet" "db" {
  count = 4
  vpc_id = aws_vpc.kasi.id  
  availability_zone = "${var.region}${var.availability_zone[count.index] }"
  cidr_block = cidrsubnet("192.168.0.0/16" , 8 ,count.index )

  tags = {
    Name = var.subnet_names[count.index]
    ###### Name = "db(count.index + 1)"
  } 

 }