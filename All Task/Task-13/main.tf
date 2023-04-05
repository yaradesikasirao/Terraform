resource "aws_instance" "apache" {
  ami                         = "ami-007855ac798b5175e" #todo:  replace this with data source
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "kasi_id_rsa" #todo:  replace this with data source
  subnet_id                   = aws_subnet.db.id
  user_data                   = file("apache.sh")
  vpc_security_group_ids      = [aws_security_group.sg.id]

}

resource "vpc" "kasi4" {
  cidr_block = "192.168.0.0/16"
}

resource "aws_subnet" "db" {
  vpc_id            = vpc.kasi4.id
  availability_zone = "us-west-2a"
  cidr_block        = "192.168.0.0/24"

  tags = {
    Name = "db"
  }

}

resource "aws_security_group" "sg" {
  name        = "sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "TLS from VPC"
    from_port   = 20
    to_port     = 20
    protocol    = "tcp"
    cidr_blocks = [vpc.kasi4]
  }

  tags = {
    Name = "sg"
  }
}


