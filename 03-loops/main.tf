# loop in terraform can be done in two ways
# 1. count
# 2. for_each

# count is used if your input is list
# for_each is used if your input is map

variable "instances" {
  default = ["frontend" , "backend" , "mysql"]
}

resource "null_resource" "sample" {
  count = length(var.instances)
}

variable "instances1" {
   default = {
     frontend = {
       name = "frontend"
       instance_type = "t3.micro"
    }
     backend = {
       name = "backend"
       instance_type = "t3.micro"
    }
     mysql = {
       name = "frontend"
       instance_type = "t3.micro"
    }
  }
}

  resource "null_resource" "sample1" {
    for_each = var.instances1
  }











