## creating vpc with 6 subnets

resource "aws_vpc" "kasi1" {
  cidr_block = var.aws_vpc_range

  tags = {
    Name = "kasi1"
  }
}

## creating 6 subnets

resource "aws_subnet" "app1" {
  vpc_id            = aws_vpc.kasi1.id
  cidr_block        = var.aws_subnet_app1_cidr
  availability_zone = "${var.region}a"
  tags = {
    "Name" = "app1"
  }
}

resource "aws_subnet" "app2" {
  vpc_id            = aws_vpc.kasi1.id
  cidr_block        = var.aws_subnet_app2_cidr
  availability_zone = "${var.region}b"

  tags = {
    "Name" = "app2"
  }
}

resource "aws_subnet" "app3" { 
  vpc_id            = aws_vpc.kasi1.id
  cidr_block        = var.aws_subnet_app3_cidr
  availability_zone = "${var.region}c"

  tags = {
    "Name" = "app3"
  }
}

resource "aws_subnet" "db1" {
  vpc_id            = aws_vpc.kasi1.id
  cidr_block        = var.aws_subnet_db1_cidr
  availability_zone = "${var.region}a"

  tags = {
    "Name" = "db1"
  }
}

resource "aws_subnet" "db2" {
  vpc_id            = aws_vpc.kasi1.id
  cidr_block        = var.aws_subnet_db2_cidr
  availability_zone = "${var.region}b"

  tags = {
    "Name" = "db2"
  }
}

resource "aws_subnet" "db3" {
  vpc_id            = aws_vpc.kasi1.id
  cidr_block        = var.aws_subnet_db3_cidr
  availability_zone = "${var.region}c"

  tags = {
    "Name" = "db3"
  }
}
