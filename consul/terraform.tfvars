vpc_cidr = "11.0.0.0/16"
vpc_tags = {
  Name    = "My-vpc",
  Owner   = "Ankit_Lohani",
  purpose = "Infra for Consul "
}
public_subnet_cidr = "11.0.192.0/19"
public_subnet_tags = {
  Name  = "consul_pub_subnet"
  Owner = "Ankit_Lohani"
}

pb_sg_tags = {
  Name = "public-sg"
}
public_subnet_zone = "us-east-1a"
ami                = "ami-08c40ec9ead489470"
master_tag = {
  Name  = "Consul_web",
  Owner = "Ankit_Lohani",
}

