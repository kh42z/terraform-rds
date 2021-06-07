provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Env = var.env_name
      App = var.app_name
    }
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}


