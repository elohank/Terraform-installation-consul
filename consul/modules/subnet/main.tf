resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_cidr
  tags                    = var.public_subnet_tags
  availability_zone       = var.public_subnet_zone
  map_public_ip_on_launch = true
}
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = var.public_routeTable_id
}

