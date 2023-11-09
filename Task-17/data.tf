## terraform import aws_vpc.manual vpc-0902e7a447015312d
resource "aws_vpc" "manual" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "manually"
  }
}


