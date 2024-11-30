provider "aws" {
  region = "us-west-2"
}

resource "aws_vpc" "jhc_vpc" {
    cidr_block       = "20.0.0.0/16"
    instance_tenancy = "default"
    tags = {
        Name = "prod-vpc"
    }
}
resource "aws_subnet" "jhc_subnet_public" {
  vpc_id            = aws_vpc.jhc_vpc.id
  cidr_block        = "20.0.1.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "public_subnet"
  }
}