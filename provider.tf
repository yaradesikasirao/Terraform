### use this terraform block



terraform {
  required_version = ">=1.0.0"
  required_providers {
    aws = {
        versversion = ">= 4.47.0"
        ssource = "hashicorp/aws"
    }
  }
}
provider "aws" {
   region = "region"
}