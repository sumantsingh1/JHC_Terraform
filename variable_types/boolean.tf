provider "aws" {
  region = "us-west-2"

}

resource "aws_instance" "one" {
  ami                         = "ami-055e3d4f0bbeb5878"
  instance_type               = "t2.micro"
  availability_zone           = "us-west-2a"
  associate_public_ip_address = var.enable_puclic_ip


  tags = {
    Name = "jhc-ec2"
  }

}

variable "enable_puclic_ip" {
  description = "enabling public ip address for ec2 instance"
  type        = bool
  default     = true

}
