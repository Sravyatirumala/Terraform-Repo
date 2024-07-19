resource "aws_vpc" "ws-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    name = var.vpc-name
  }
}

