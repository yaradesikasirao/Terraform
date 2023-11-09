resource "aws_vpc" "kasi" {
  cidr_block = "192.168.0.0/16"

  tags = {
    "Name" = "kasi"
  }
}


resource "aws_subnet" "app1" {
  for_each = var.aws_subnet_cidr
  vpc_id = aws_vpc.kasi.id
  cidr_block = each.value["cidr_block"]
  availability_zone_id = each.value["region_azs"]
   
   tags = {
     "Name" = "app1"
   }
}