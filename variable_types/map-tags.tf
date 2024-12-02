
#creating EC2 instance in the oregon region
resource "aws_instance" "map_one" {
    ami=var.ami_value
    instance_type = var.instance_type_value
    availability_zone = var.availability_zone_value


    tags = var.project_environment

}

variable "ami_value" {
    description = "value of ami"
    type = string
    default = "ami-055e3d4f0bbeb5878"  
}
variable "availability_zone_value" {
    description = "value of availiability zone"
    type = string
    default = "us-west-2a"
}
variable "instance_type_value" {
    description = "value of instance type"
    type = string
    default = "t2.micro"
}

variable "project_environment" {
    description = "adding tags for ec2 instance"
    type = map(string)
    default = {
      Name = "JavaHome-Server"
      Project="Swiggy"
      Environment="Production"

    }
  
}
