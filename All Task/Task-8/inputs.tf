## variables for vpc and 4 subnets by using count


variable "vpc_name" {
  type    = string
  default = "kasi"
}


## variable for subnets

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "availability_zone" {
  type    = list(string)
  default = ["a", "b", "a", "b"]
}

variable "subnet_names" {
  type    = list(string)
  default = ["db", "db1", "app", "app1"]
}