resource "aws_iam_group" "four" {
    name = each.value
    for_each = toset(var.iam_groups)
  
}

variable "iam_groups" {
    description = "creating set of group"
    type=set(string)
    default = [ "JavaHome", "Cloud", "DevOps","Security-OU","Prod-OU" ]
  
}