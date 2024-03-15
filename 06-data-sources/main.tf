data "aws_ssm_parameter" "user" {
  name = "dev.rds.username"
}

output "username" {
  value = data.aws_ssm_parameter.user.value
}