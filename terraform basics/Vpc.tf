resource "aws_vpc" "terraformvpc" {
  cidr_block       = var.vpc-cidr 
  
  tags = {
    Name = var.vpc-name
  }
}
