resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.useast2vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.useast2_gateway.id
  }
 tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}