## variables for vpc and 4 subnets by using count

variable "aws_vpc_cidr" {
  type = string
  default = "192.168.0.0/16"
}

variable "vpc_name" {
  type = string
  default = "kasi"
}


## variable for subnets

variable "region" {
  type = string
  default = "us-west-2"
}

variable "availability_zone" {
  type = list(string)
  default = ["a" , "b", "a" , "b"]
}

variable "subnet_names" {
  type = list(string)
  default = ["db" , "db1" , "app" , "app1"]
}