module "my_vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  vpc_tags = var.vpc_tags
}
module "IGW_network" {
  source   = "./modules/igw"
  vpc_id   = module.my_vpc.vpc-id
  igw_tags = var.igw_tags
}


module "pub_subnet" {
  source               = "./modules/subnet"
  vpc_id               = module.my_vpc.vpc-id
  public_subnet_cidr   = var.public_subnet_cidr
  public_subnet_tags   = var.public_subnet_tags
  public_subnet_zone   = var.public_subnet_zone
  public_routeTable_id = module.route_table.public_routeTable_id
}

module "route_table" {
  source                 = "./modules/route_table"
  vpc_id                 = module.my_vpc.vpc-id
  igw_id                 = module.IGW_network.igw-id
  public_routeTable_tags = var.public_routeTable_tags
}

module "pb_sg" {
  source     = "./modules/security_group"
  sg_pb      = var.sg_pb
  vpc_id     = module.my_vpc.vpc-id
  pb_sg_tags = var.pb_sg_tags
}

module "consul_webserver" {
  source         = "./modules/ec2"
  ami            = var.ami
  subnet         = module.pub_subnet.public-subnet-id
  security_group = module.pb_sg.public-sg-id
  ec2_tags       = var.consul_tag
}
