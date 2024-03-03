module "test" {
  for_each = var.instances
  source = "./test"
}

variable "instances" {
  default = {
   frontend = {}
   backend = {}
   mysql = {}
  }
}