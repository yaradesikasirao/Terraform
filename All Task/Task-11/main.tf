## create 2 vpc and subnet with length and variables

resource "aws_vpc" "kasi" {
  count      = length(var.aws_vpc_count)
  cidr_block = "192.${count.index}.0.0/16"

  tags = {
    ##Name = var.vpc_name$[count.index]
    Name = "ram${count.index + 1}"

  }
}

resource "aws_subnet" "db" {
  count             = length(var.subnet_names)
  vpc_id            = aws_vpc.kasi[0].id
  availability_zone = "${var.region}${var.availability_zone[count.index]}"
  cidr_block        = cidrsubnet("192.0.0.0/16", 8, count.index)

  tags = {
    Name = "raghu${count.index + 1}"
    ###### Name = "db(count.index + 1)"
  }

}