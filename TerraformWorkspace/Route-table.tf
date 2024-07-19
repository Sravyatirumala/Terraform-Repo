resource "aws_route_table" "ws-Public-RT" {
  vpc_id = aws_vpc.ws-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ws-igw.id
  }

  route {
    cidr_block     = var.ws-pub-sub-cidr
    nat_gateway_id = aws_nat_gateway.ws-NAT.id
  }

  tags = {
    Name = "${var.vpc-name}-pub-rt"
  }
}


resource "aws_route_table" "ws-private-rt" {
  vpc_id = aws_vpc.ws-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ws-NAT.id
  }

  tags = {
    Name = "${var.vpc-name}-pri-rt"
  }
}

resource "aws_route_table_association" "pub-association" {
  subnet_id      = aws_subnet.ws-subnet-pub.id
  route_table_id = aws_route_table.ws-Public-RT.id
}

resource "aws_route_table_association" "pri-association" {
  subnet_id      = aws_subnet.ws-subnet-private.id
  route_table_id = aws_route_table.ws-private-rt.id
}

