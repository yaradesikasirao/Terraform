
## variable writen as map

variable "map" {
  type = map(any)
  default = {
    sub-1 = {
      region            = "us-west-2"
      availability_zone = "us-west-2a"
      subnet_names      = "pawan1"
      cidr              = "192.168.0.0/24"
    }
    sub-2 = {
      region            = "us-west-2"
      availability_zone = "us-west-2b"
      subnet_names      = "pawan"
      cidr              = "192.168.1.0/24"
    }

  }
}