resource "aws_internet_gateway" "PublicIGW" {
  vpc_id = aws_vpc.terraformvpc.id

  tags = {
    Name = "PublicIGW"
  }
}
