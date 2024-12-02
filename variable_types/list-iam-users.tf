
#creating IAM Users
resource "aws_iam_user" "five" {
    count=length(var.user_names)
    name = var.user_names[count.index]
  
}

variable "user_names" {
    description = "creating collection of IAM Users"
    type = list(string)
    default = [ "sumant","heamnt","shweta","mohan","sohan" ]

  
}