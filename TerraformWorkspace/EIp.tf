resource "aws_eip" "ws-eip-forNAT" {
  domain = "vpc"

  tags = {
    Name = "${var.vpc-name}-nat-gw-eip"
  }


}