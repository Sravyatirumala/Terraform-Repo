output "vpc-id" {
  value = aws_vpc.terraformvpc.id 
}


output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "ami" {
  value = var.ami
}

output "instance-type" {
    value = var.instance-type  # This will just print instance id which we dont know.
}
