# provider "aws" {
#   region = "us-west-2"
#   alias  = "us-west-2"

# }
# provider "aws" {
#   region = "us-east-1"
#   alias  = "us-east-1"

# }
#creating instance in oregon region
# resource "aws_instance" "one" {
#   ami               = "ami-04dd23e62ed049936"
#   availability_zone = "us-west-2a"
#   key_name          = "oregon_key"
#   instance_type     = "t2.micro"
#   provider          = aws.us-west-2

#   tags = {
#     Name = "oregon_ec2"
#   }
# }

#creating instance oregon region 
resource "aws_instance" "two" {
  ami               = var.ami_id
  availability_zone = var.availability_zone
  
  instance_type     = var.instance_type
  

  tags = {
    Name = "variable_instance"
  }
}
