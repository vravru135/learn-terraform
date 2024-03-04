terraform {
  backend "s3" {
    bucket = "d76-terraform-state"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}
