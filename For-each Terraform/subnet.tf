resource "aws_subnet" "public_subnets" {
  vpc_id            = aws_vpc.terraformvpc.id
  for_each          = var.subnets-cidr
  availability_zone = each.key
  cidr_block        = each.value

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc-name}-pubsub-${each.key}"
  }
}


resource "aws_subnet" "private_subnets" {
  vpc_id            = aws_vpc.terraformvpc.id
  for_each          = var.private-subnet-cidr
  cidr_block        = each.value
  availability_zone = each.key

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc-name}-privatesub-${each.key}"
  }
}


# Note: we need to use either count / for each not both in same  resource.