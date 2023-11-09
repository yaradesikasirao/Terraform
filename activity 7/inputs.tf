## variable for vpc

variable "aws_vpc" {
  type    = string
  default = "192.168.0.0/16"
}

variable "region" {
  type        = string
  default     = "us-west-2"
  description = "Region to create resources"
}

variable "region_azs" {
  type    = list(string)
  default = ["a", "b", "a", "b", ]
}


## variable for subnet

variable "aws_subnet_cidr" {
  type    = list(string)
  default = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24", ]
}


variable "subnet_names" {
  type    = list(string)
  default = ["app", "db", "app1", "db1", ]
}