### variable for vpc_cidr and subnet_cidr and regions


### list(object) write in variable

variable "list_objects" {
  type = object({
    vpc_cidr          = string
    subnet_cidr       = string
    region            = string
    availability_zone = string
    subnet_names      = string
    vpc_name          = string
  })
  default = {
    availability_zone = "a"
    vpc_cidr          = "192.168.0.0/16"
    subnet_cidr       = "192.168.0.0/24"
    region            = "us-west-2"
    subnet_names      = "db"
    vpc_name          = "kasi"
  }
}