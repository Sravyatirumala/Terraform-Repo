vpc-name = "terraformvpc"
vpc-cidr = "10.0.0.0/16"
subnets-cidr = ["10.0.0.0/28", "10.0.1.0/28"]
instance-type = "t2.medium"
ami = "ami-0ca2e925753ca2fb4"
availability-zone = ["us-east-2a", "us-east-2a"]
instance-name = "public_instance"
RT-Cidr = ["0.0.0.0/0","0.0.0.0/0"]
key_name = "us-east-2"