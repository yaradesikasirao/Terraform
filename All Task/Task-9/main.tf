## create vpc and subnet  variables

resource "aws_vpc" "kasi" {
  cidr_block = var.list_objects.vpc_cidr

  tags = {
    Name = var.list_objects.vpc_name
  }
}

resource "aws_subnet" "db" {
  vpc_id            = aws_vpc.kasi.id
  availability_zone = "${var.list_objects.region}${var.list_objects.availability_zone}"
  cidr_block        = var.list_objects.subnet_cidr

  tags = {
    Name = var.list_objects.subnet_names
  }

}