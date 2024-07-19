resource "aws_subnet" "public_subnets" {
  vpc_id                  = aws_vpc.terraformvpc.id
  count                   = 6
  cidr_block              = cidrsubnet(var.vpc-cidr,8, count.index)     # vpc-cidr=/16 then 16+12 =/28 subnets will be getting
  availability_zone       = element(var.availability-zone, count.index) # Replace with your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc-name}-pubsub-${count.index + 1}"
  }
}


# resource "aws_subnet" "private_subnets" {
#   vpc_id                  = aws_vpc.terraformvpc.id
#   count                   = length(var.private-subnet-cidr)
#   cidr_block              = var.private-subnet-cidr[count.index]
#   availability_zone       = element(var.availability-zone, count.index) # Replace with your desired availability zone
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "${var.vpc-name}-privatesub-${count.index + 1}"
#   }
# }


# count                   = length(var.subnets-cidr)
# cidr_block              = var.subnets-cidr[count.index]