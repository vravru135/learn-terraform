variable "sample1" {
  default = "hello"
}

output "sample1" {
   value = var.sample1
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
 }

output "fruits_first_fruit" {
  value = var.fruits[0]
 }