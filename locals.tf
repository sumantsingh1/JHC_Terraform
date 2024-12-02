locals {
  ami_id                  = "ami-055e3d4f0bbeb5878"
  instance_type_value     = "t2.micro"
  availability_zone_value = "us-west-2a"
  tags_name = {
    Name = "jhc-ec2-locals"
  }
}


resource "aws_instance" "locals_ec2" {
  ami                         = local.ami_id
  instance_type               = local.instance_type_value
  availability_zone           = local.availability_zone_value
  associate_public_ip_address = var.enable_public_ip
  tags                        = local.tags_name


}

variable "enable_public_ip" {
  description = "Enable public IP address for EC2 instance"
  type        = bool
  default     = true
}

output "instance_details" {
  value = {
    public_ip  = aws_instance.locals_ec2.public_ip
    private_ip = aws_instance.locals_ec2.private_ip
    public_dns = aws_instance.locals_ec2.public_dns
  }
}
