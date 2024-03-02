resource "aws_instance" "frontend" {
   ami = "ami-0f3c7d07486cad139"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0158e4b6b7f7e323d"]
   tags = {
     Name = "frontend"
   }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z069045511YTPWJUCXRCN"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
   ami = "ami-0f3c7d07486cad139"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0158e4b6b7f7e323d"]
   tags = {
     Name = "backend"
   }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z069045511YTPWJUCXRCN"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
   ami = "ami-0f3c7d07486cad139"
   instance_type = "t3.micro"
   vpc_security_group_ids = ["sg-0158e4b6b7f7e323d"]
   tags = {
     Name = "mysql"
   }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z069045511YTPWJUCXRCN"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}


