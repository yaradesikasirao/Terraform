
### create list of object 

resource "aws_vpc" "kasi1" {
  cidr_block = var.aws_vpc_info.aws_vpc_range

  tags = {
    Name = "kasi1"
  }
}


## create subnet

resource "aws_subnet" "app1" {
  count             = length(var.aws_vpc_info.subnet_names)  ## creating length
  vpc_id            = aws_vpc.kasi1.id
  cidr_block        = cidrsubnet(var.aws_vpc_info.aws_vpc_range , 8 , count.index )
  availability_zone = "${var.region}${var.aws_vpc_info.region_azs[count.index]}"

  depends_on = [
    aws_vpc.kasi1
  ]

  tags = {
    Name = var.aws_vpc_info.subnet_names[count.index]
  }
}