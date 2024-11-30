provider "aws" {
    region = "us-west-2"
  
}

resource "aws_instance" "demo_count" {
  
  ami = "ami-04dd23e62ed049936"
  instance_type = "t2.micro"
  count = 5
  

  tags = {
    Name="jhc_count_instance"
  }
}