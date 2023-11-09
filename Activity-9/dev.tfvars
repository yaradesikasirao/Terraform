region = "us-east-1"
ntier_vpc_info = {
  subnet_azs   = ["a", "b", "a", "b", "a", "b"]
  subnet_names = ["app1", "app2", "db1", "db2", "web1", "web2"]
  vpc_cidr     = "192.168.0.0/16"
  subnet_azs      = ["a", "b", "a", "b", "a", "b"]
  subnet_names    = ["app1", "app2", "db1", "db2", "web1", "web2"]
  vpc_cidr        = "192.168.0.0/16"
  public_subnets  = ["web1", "web2"]
  private_subnets = ["app1", "app2", "db1", "db2"]

}