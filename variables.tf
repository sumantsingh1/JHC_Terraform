# variable "ami_id" {
#   description = "instance ami id"
#   type = string
#   default = "ami-04dd23e62ed049936"
# }

# variable "availability_zone" {
#   description = "value"
#   type = string
#   default = "us-west-2a"
  
# }
# variable "instance_type" {
#   description = "type of instance"
#   type = string
#   default = "t2.micro"
# }

# variable "provider" {

#   description = "value of provider"
#   type = string
#   default = "us-west-2"
  
# }

variable "instance_count" {
    description = "create instance"
    type = number
    default = 5
  
}
