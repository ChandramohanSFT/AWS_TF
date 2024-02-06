provider "aws" {
  region = "us-east-2"
}

data "aws_availability_zones" "available" {}

resource "aws_instance" "main" {
  count         = var.ec2_count
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = var.subnet_id

  tags = {
    Name = "dev_module"
  }
}
