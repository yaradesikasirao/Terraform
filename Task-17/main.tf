## terraform import aws_instance.import_ld i-0c1ae44d7dbbd2e81


resource "aws_instance" "import_ld" {
  ami                         = "ami-0fcf52bcf5db7b003"
  instance_type               = "t2.micro"

  tags = {
    Name = "ram"
  }

}

## terraform import aws_instance.import i-0247fc2bb837b50ed

resource "aws_instance" "import" {
  ami                         = "ami-0fcf52bcf5db7b003"
  instance_type               = "t2.micro"

  tags = {
    Name = "import 2"
  }

}

### terraform import aws_vpc.import vpc-0902e7a447015312d

resource "aws_vpc" "import" {
  cidr_block = "10.0.0.0/16"
}

### terraform import aws_subnet.qq subnet-0106a7114a336bfc4

resource "aws_subnet" "qq" {
  cidr_block = "10.0.2.0/24"
}

### terraform import aws_subnet.qq2 subnet-0648efa4b48ac83d7

resource "aws_subnet" "qq2" {
  cidr_block = "10.0.3.0/24"
}

### terraform import aws_subnet.db subnet-0e495e93e5ac4d283


resource "aws_subnet" "db" {
  cidr_block = "10.0.0.0/24"
}

### terraform import aws_subnet.db2 subnet-07ed5f98b6702eaa7


resource "aws_subnet" "db2" {
  cidr_block = "10.0.1.0/24"
} 

## terraform import aws_route_table.import_ld rtb-0c5043c988802f8c1

resource "aws_route_table" "import_ld" {
  vpc_id = aws_vpc.import.id
}

## terraform import aws_route.my_route rtb-656C65616E6F72_2620:0:2d0:200::8/125

resource "aws_route" "import_ld" {
  
}

### terraform import aws_route_table_association.import_ld igw-05b2ecb8295574291

resource "aws_route_table_association" "import_ld" {
  subnet_ids = ["subnet-0e495e93e5ac4d283" ,"subnet-07ed5f98b6702eaa7" ,"subnet-0106a7114a336bfc4","subnet-0648efa4b48ac83d7"]
}

### terraform import aws_internet_gateway.import_ld igw-05b2ecb8295574291

resource "aws_internet_gateway" "import_ld" {
  
}

###  terraform import aws_security_group.import_ld sg-05d28aa727417b8f8

resource "aws_security_group" "import_ld" {
  
}

### terraform import aws_lb.importld arn:aws:elasticloadbalancing:us-west-2:204105346806:loadbalancer/app/importld/83c3908a8f66f7d5

resource "aws_lb" "importld" {
  
}



