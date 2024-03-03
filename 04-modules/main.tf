module "test" {
  source = "./test"
}

variable "instances" {
  default = {
   frontend = {}
   backend = {}
   mysql = {}
  }
}