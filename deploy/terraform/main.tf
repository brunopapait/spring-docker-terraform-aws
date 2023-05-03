resource "aws_vpc" "contact_vpc_1" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name : "contactbook_vpc_1"
  }
}

resource "aws_subnet" "contact_subnet" {
  vpc_id                  = aws_vpc.contact_vpc_1.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "contactbook_subnet"
  }
}

resource "aws_internet_gateway" "contact_igw" {
  vpc_id = aws_vpc.contact_vpc_1.id

  tags = {
    Name = "contactbook_igw"
  }
}

resource "aws_route_table" "contact_route_table" {
  vpc_id = aws_vpc.contact_vpc_1.id

  tags = {
    Name = "contactbook_route_table"
  }
}

resource "aws_route" "contact_route" {
  route_table_id         = aws_route_table.contact_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.contact_igw.id
}

resource "aws_route_table_association" "contact_route_table_association" {
  route_table_id = aws_route_table.contact_route_table.id
  subnet_id      = aws_subnet.contact_subnet.id
}