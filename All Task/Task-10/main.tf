## create 2 vpc and subnet with length

resource "aws_vpc" "kasi" {
  count      = length([1, 2])
  cidr_block = "192.${count.index}.0.0/16"

  tags = {
    ##Name = var.vpc_name$[count.index]
    Name = "kasi${count.index + 1}"

  }
}

resource "aws_subnet" "db" {
  count             = length([1, 2, 3, 4, ])
  vpc_id            = aws_vpc.kasi[0].id
  cidr_block        = cidrsubnet("192.0.0.0/16", 8, count.index)

  tags = {
    Name = "db${count.index + 1}"
    ###### Name = "db(count.index + 1)"
  }

}