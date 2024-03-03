env = "dev"
ami = "ami-0f3c7d07486cad139"
sg_id = ["sg-0158e4b6b7f7e323d"]
zone_id = "Z069045511YTPWJUCXRCN"

components = {
       frontend = {
         name = "frontend"
         instance_type = "t3.micro"
       }

        mysql = {
         name = "mysql"
         instance_type = "t3.micro"
       }

       backend = {
          name = "backend"
          instance_type = "t3.micro"
       }
     }