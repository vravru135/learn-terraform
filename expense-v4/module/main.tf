resource "aws_instance" "instance" {
   ami = var.ami
   instance_type = var.instance_type
   vpc_security_group_ids = var.sg_id
   tags = {
     Name = "${var.name}-${var.env}"
   }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "${var_name}-${var.env}"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances.private_ip]
}

variable "ami" {}
variable "instance_type" {}
variable "sg_id" {}
variable "name" {}
variable "env" {}
variable "zone_id" {}


