
variable "region" {
  type        = string
  default     = "us-west-2"
  description = "Region to create resources"
}


variable "aws_vpc_info" {
  type = object ({
      
      aws_vpc_range = string ,
      region_azs = list(string) ,
      subnet_names = list(string)

  })
  
  default = {
    aws_vpc_range = "192.168.0.0/16",
    region_azs = [ "a" , "b" ,"a", "b", ],
    subnet_names = [ "app" , "db", "app1" , "db1" ,]
  }
}