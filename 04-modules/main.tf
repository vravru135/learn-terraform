module "test" {
  for_each = ar.instances
  source = "./test"
}

variable "instances" {
  default = {
   frontend = {}
   backend = {}
   mysql = {}
  }
}