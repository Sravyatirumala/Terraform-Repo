module "inframodule" {
  source            = "../Infra"
  vpc-name          = "modulevpc"
  vpc-cidr          = "168.198.0.0/16"
  subnets-cidr      = ["168.198.1.0/26", "168.198.2.0/26"]
  instance-type     = "t2.medium"
  ami               = "ami-09040d770ffe2224f"
  availability-zone = ["us-east-2a", "us-east-2a"]
  instance-name     = "public_instance"
  RT-Cidr           = ["0.0.0.0/0", "0.0.0.0/0"]
}


resource "aws_instance" "ModuleInstance" {
  instance_type = module.inframodule.instance-type
  ami =   module.inframodule.ami
  subnet_id     = module.inframodule.subnet_id
}

provider "aws" {
    region = "us-east-2"   # provider block should be declared in modules for sure 
}
