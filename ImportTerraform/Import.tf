resource "aws_vpc" "import-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "import-vpc"
  }
}

resource "aws_subnet" "import-subnet" {
  vpc_id = aws_vpc.import-vpc.id
}

resource "aws_instance" "import-instance" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.import-subnet.id
  key_name      = "testkey"

  tags = {
    Name = "import-terraforminstance"
  }
}


# resource "aws_vpc" "import-vpc" {
#   tags = {
#     Name = "import-vpc"
#   }
# }

