resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags       = var.vpc_tags
}
