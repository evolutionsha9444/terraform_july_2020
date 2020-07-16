module "my_vpc {
  source   = "../module/vpc
  vpc_cidr = "192.168.0.0/16"
  tenancy  = "default"
  vpc_id   = module.my_vpc.vpc_id
  subnet_cidr1 = "192.168.1.0/24"
  subnet_cidr2 = "192.168.2.0/24"
}
 
 module "my_ec2" {
   source = "../modules/ec2"
   ec2_count = "1"
   ami_id     = "ami-08f3d892de259504d "
   instance_type = "t2.micro"
   subnet_id = module.my_vpc.subnet_id
   priv_subnet_id = module.my_vpc.priv_subnet_id
 }
