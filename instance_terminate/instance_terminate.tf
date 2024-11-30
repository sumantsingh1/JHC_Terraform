provider "aws" {
    region = "us-west-2"
}
resource "aws_instance" "example" {
  ami = "ami-046b5b8111c19b3ac"
  instance_type = "t2.micro"
  }

