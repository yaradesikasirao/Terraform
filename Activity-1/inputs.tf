## This is for variables of avaiblity region and cidr range



variable "region" {                              ## Excute -var "region"="ap-south-1"
      type = string                              ## use the terraform variables
      default = ["us-west-1a"]
      description = "enter the regiion to create resource"
}


variable "ntier-vpc-rang" {
      type = string
      default = ["192.168.0.0/16"]
      description = "enter vpc cidr range"
}