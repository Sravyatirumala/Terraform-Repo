resource "aws_instance" "workspace_instance" {
  ami           = var.ami_id
  instance_type = var.instance-type
  subnet_id     = aws_subnet.ws-subnet-pub.id
  key_name      = var.key-pair


  tags = {
    Name = "${var.vpc-name}-instance"
  }
}

