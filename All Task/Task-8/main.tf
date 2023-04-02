## create 2 vpc and subnet with variables

resource "aws_vpc" "kasi" {
  count      = 2
  cidr_block = "192.${count.index}.0.0/16"

  tags = {
    ##Name = var.vpc_name$[count.index]
     Name = "kasi${count.index + 1}"
    
  }
}

resource "aws_subnet" "db" {
  count             = 4
  vpc_id            = aws_vpc.kasi[0].id
  availability_zone = "${var.region}${var.availability_zone[count.index]}"
  cidr_block        = cidrsubnet("192.0.0.0/16", 8, count.index)

  tags = {
    Name = var.subnet_names[count.index]
    ###### Name = "db(count.index + 1)"
  }

}