region = "us-east-1"
aws_vpc_range = "10.100.0.0/16"                  ## terraform apply -var-file values.tfvars
aws_subnet_app1_cidr = "10.100.0.0/24"
aws_subnet_app2_cidr = "10.100.1.0/24"
aws_subnet_app3_cidr = "10.100.2.0/24"
aws_subnet_db1_cidr = "10.100.3.0/24"
aws_subnet_db2_cidr = "10.100.4.0/24"
aws_subnet_db3_cidr = "10.100.5.0/24"