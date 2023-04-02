## vpc and subnet varibles by using length

variable "aws_vpc_count" {
  type = list(string)
  default = ["1","2"]
}

variable "vpc_cidr_range" {
  type = string
  default = "192.0.0.0/16."
}

variable "vpc_name" {
  type = string
  default = "kasi"
}


### variable for subnets


variable "aws_subnet_count" {
  type = string 
  default = "4"
}

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "availability_zone" {
  type    = list(string)
  default = ["a", "b", "a", "b"]

}


variable "subnet_names" {
  type = list(string)
  default = ["db"  ,"db1" ,"app" , "app1"]
}