variable "aws_vpc_cidr" {
  type = string
  default = "192.168.0.0/16"

}


### variable for subnets

variable "aws_subnet_cidr" {
  type = map
  default = {
    sub-1 = {
        "region_azs" = "usw2-az1"
        "cidr_block" = "192.168.0.0/24"
    }
    sub-2 = {
       "region_azs" = "usw2-az2"
        "cidr_block" = "192.168.1.0/24"
    }
    sub-3 = {
        "region_azs" = "usw2-az3"
        "cidr_block" = "192.168.2.0/24"
    }
  }
}