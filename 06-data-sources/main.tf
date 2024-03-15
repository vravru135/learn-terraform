#data "aws_ssm_parameter" "user" {
 # name = "dev.rds.username"
#}

#output "username" {
 # value = data.aws_ssm_parameter.user.value
#}

data "aws_instance" "instance" {
  filter {
   name   = "tag:name"
   values =  ["workstation"]
  }
 }

 output "instance" {
   value = "Instance ID - ${data.aws_instance.instance.id} | Public IP - ${data.aws_instance.instance.public_ip}"
 }