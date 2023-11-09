
### create vpc

resource "aws_vpc" "kasi1" {
  cidr_block = var.aws_vpc

  tags = {
    Name = "kasi1"
  }
}


## create subnet

resource "aws_subnet" "app1" {
  count             = 4
  vpc_id            = aws_vpc.kasi1.id
  cidr_block        = var.aws_subnet_cidr[count.index]
  availability_zone = "${var.region}${var.region_azs[count.index]}"

  depends_on = [
    aws_vpc.kasi1
  ]

  tags = {
    Name = var.subnet_names[count.index]
  }
}