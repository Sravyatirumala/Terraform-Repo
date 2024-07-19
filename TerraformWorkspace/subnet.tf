resource "aws_subnet" "ws-subnet-pub" {
  vpc_id            = aws_vpc.ws-vpc.id
  availability_zone = var.az-zone
  cidr_block        = var.ws-pub-sub-cidr
  tags = {
    Name = "${var.vpc-name}-pub-sub"
  }

}


resource "aws_subnet" "ws-subnet-private" {
  vpc_id            = aws_vpc.ws-vpc.id
  availability_zone = var.az-zone
  cidr_block        = var.ws-private-sub-cidr
  tags = {
    Name = "${var.vpc-name}-private-sub"
  }

}

