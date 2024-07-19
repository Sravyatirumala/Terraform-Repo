resource "aws_internet_gateway" "ws-igw" {
  vpc_id = aws_vpc.ws-vpc.id

  tags = {
    Name = "${var.vpc-name}-igw"
  }
}

resource "aws_nat_gateway" "ws-NAT" {
  subnet_id     = aws_subnet.ws-subnet-pub.id
  allocation_id = aws_eip.ws-eip-forNAT.id
  tags = {
    Name = "${var.vpc-name}-nat-gw"
  }

}
