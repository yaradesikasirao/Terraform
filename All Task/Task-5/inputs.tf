### variable for vpc_cidr and subnet_cidr and regions

variable "aws_vpc_cidr" {
  type = string
  default = "192.168.0.0/16"
}



## variables for subnets

variable "aws_subnet_cidr" {
  type = string
  default = "192.168.0.0/24"
}

## variable for region

variable "aws_region" {
  type = string
  default = "us-west-2"
}

## variables for subnet_names

variable "subnet_names" {
  type = string
  default = "db"
}


### variables for availability zones

variable "availability_zone" {
  type = string
  default = "a"
}


## variable for vpc name

variable "vpc_name" {
  type = string
  default = "kasi"
}

