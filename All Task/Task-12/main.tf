## create vpc and subnet for each loop variables

resource "aws_vpc" "kasi" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "ntr"
  }
}

resource "aws_subnet" "db" {
  for_each          = var.map
  vpc_id            = aws_vpc.kasi.id
  availability_zone = each.value["availability_zone"]
  cidr_block        = each.value["cidr"]

  tags = {
    Name = each.value["subnet_names"]
  }

}