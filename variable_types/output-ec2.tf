
resource "aws_instance" "one-output-ec2" {
  ami                         = "ami-055e3d4f0bbeb5878"
  instance_type               = "t2.micro"
  availability_zone           = "us-west-2a"
  associate_public_ip_address = var.enable_public_ip

  tags = {
    Name = "jhc-ec2-output"
  }
}

variable "enable_public_ip" {
  description = "Enable public IP address for EC2 instance"
  type        = bool
  default     = true
}

output "instance_details" {
  value = {
    public_ip      = aws_instance.one-output-ec2.public_ip
    private_ip     = aws_instance.one-output-ec2.private_ip
    public_dns     = aws_instance.one-output-ec2.public_dns
  }
}
