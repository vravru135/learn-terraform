# loop in terraform can be done in two ways
# 1. count
# 2. for_each

# count is used if your input is list
# for_each is used if your input is map

variable "instances" {
  default = ["frontend" , "backend" , "mysql" ]
}

 output "instances" {
   count = length(var.instances)
   value = var.instances[count.index]
 }