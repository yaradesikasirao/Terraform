## This is for variables of avaiblity region and cidr range



variable "region" {                              ## Excute -var "region"="ap-south-1"
      type = string                              ## use the terraform variables
      default = "us-west-1"
      description = "enter the regiion to create resource"
}


variable "ntier-vpc-rang" {
      type = string
      default = ["192.168.0.0/16"]
      description = "enter vpc cidr range"
}

variable "ntier-app1-cidr" {
      type = string
      default = ["192.168.0.0/24"]
}

variable "ntier-app2-cidr" {
      type = string
      default = ["192.168.1.0/24"]
}