module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"
  providers = {
    aws = aws.east
  }


}

module "vpc_1" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.1.0.0/16"
  providers = {
    aws = aws.west
  }
 

}

