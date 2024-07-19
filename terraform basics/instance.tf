resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id     = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  key_name      = "us-east-2"

  tags = {
    Name = var.instance-name
  }
}


resource "aws_instance" "public_instance2" {
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id     = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  key_name      = "us-east-2"

  tags = {
    Name = "${var.instance-name}-2"
  }
}

