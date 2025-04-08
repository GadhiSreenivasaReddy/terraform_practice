resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags       = var.default_tags
}

resource "aws_subnet" "publicsubnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = var.public_availability_zone
  tags                    = var.default_tags
}

resource "aws_subnet" "privatesubnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  availability_zone = var.private_availability_zone
  tags                    = var.default_tags
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags   = var.default_tags
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id
  tags   = var.default_tags
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.publicsubnet.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private_rt_table" {
  vpc_id = aws_vpc.vpc.id
  tags   = merge(var.default_tags, { "Name" = "PrivateRouteTable" })
}

resource "aws_route_table_association" "private_association" {
  subnet_id      = aws_subnet.privatesubnet.id
  route_table_id = aws_route_table.private_rt_table.id
}