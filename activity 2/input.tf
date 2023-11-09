## create vpc range 

variable "aws_vpc_range" {
  type    = string
  default = "192.168.0.0/16"
}

## create region for subnets

variable "region" {
  type    = string
  default = "us-east-1"
}

## create the subnet default ids

variable "aws_subnet_app1_cidr" {
  type    = string
  default = "192.168.0.0/24"
}

variable "aws_subnet_app2_cidr" {
  type    = string
  default = "192.168.1.0/24"
}

variable "aws_subnet_app3_cidr" {
  type    = string
  default = "192.168.2.0/24"
}

variable "aws_subnet_db1_cidr" {
  type    = string
  default = "192.168.3.0/24"

}

variable "aws_subnet_db2_cidr" {
  type    = string
  default = "192.168.4.0/24"

}
variable "aws_subnet_db3_cidr" {
  type    = string
  default = "192.168.5.0/24"

}