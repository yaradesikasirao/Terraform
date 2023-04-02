## variables for 1 vpc and 4 subnets

variable "aws_vpc_cidr" {
  type = string
  default = "192.168.0.0/16"
}

### variable for vpc names

variable "vpc_name" {
  type = string
  default = "kasi"
}

## variable for subnets -1

variable "aws_subnet_db" {
  type = string
  default = "192.168.0.0/24"
}

variable "region" {
  type = string
  default = "us-west-2"
}

variable "availability_zone" {
  type = string
  default = "a"
}

variable "aws_subnet_name" {
  type = string
  default = "db"
}

## variable for subnets -2

variable "aws_subnet_db-1" {
  type = string
  default = "192.168.1.0/24"
}

variable "region-1" {
  type = string
  default = "us-west-2"
}

variable "availability_zone-1" {
  type = string
  default = "b"
}

variable "aws_subnet_name-1" {
  type = string
  default = "db1"
}

## variable for subnets -3

variable "aws_subnet_app" {
  type = string
  default = "192.168.2.0/24"
}

variable "region-2" {
  type = string
  default = "us-west-2"
}

variable "availability_zone-2" {
  type = string
  default = "a"
}

variable "aws_subnet_name-2" {
  type = string
  default = "app"
}

## variable for subnets -4

variable "aws_subnet_app-1" {
  type = string
  default = "192.168.3.0/24"
}

variable "region-3" {
  type = string
  default = "us-west-2"
}

variable "availability_zone-3" {
  type = string
  default = "b"
}

variable "aws_subnet_name-3" {
  type = string
  default = "app1"
}