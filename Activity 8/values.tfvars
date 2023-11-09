
 regregion = "us-west-2"


variable "aws_vpc_info" {
  type = object ({
      
      aws_vpc_range = string ,
      region_azs = list(string) ,
      subnet_names = list(string)

  })
  
  default = {
    aws_vpc_range = "10.100.0.0/16"
    region_azs = [ "a" , "b" ,"a", "b", ]
    subnet_names = [ "app" , "db", "app1" , "db" ,]
  }
}