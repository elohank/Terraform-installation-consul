variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for apache vpc"
}
variable "vpc_cidr" {
  default = ""
}
variable "vpc_tags" {
  default     = {}
  type        = map(string)
  description = "tags for consul vpc"
}
variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for subnet"
  default     = ""
}
variable "public_subnet_tags" {
  default     = {}
  description = "tags for consul subnet"
  type        = map(string)
}
variable "public_subnet_zone" {
  default = {}
}
variable "sg_pb" {
  type        = string
  description = "public security group"
  default     = "consul-public-sg"
}
variable "https_port" {
  type        = string
  description = "TCP port for https"
  default     = "8500"
}
variable "ssh_port" {
  type        = string
  description = "TCP port for ssh"
  default     = "22"
}

variable "pb_sg_tags" {
  default     = {}
  description = "Public Security group tags for consul"
  type        = map(string)
}

variable "public_routeTable_tags" {
  description = "tags for consul vpc"
  default = {
    Name    = "pub_RT",
    Owner   = "Ankit_Lohani",
    purpose = "consul__pub_RT "

  }
}

variable "igw_tags" {
  description = "tag for internet gateway of Consul-vpc"
  default = {
    Name  = "Consul-igw"
    Owner = "Ankit_Lohani"
  }
}
variable "ami" {
  type        = string
  description = "ami id for Consul instances"
  default     = ""
}
variable "consul_tag" {
  type        = map(string)
  description = "tags for Consul master node instance"
  default     = {}
}

