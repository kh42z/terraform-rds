module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.77.0"

  enable_dns_hostnames = true
  enable_dns_support   = true
  name                 = "${var.env_prefix}-vpc"
  cidr                 = var.cidr
  azs                  = var.azs
  public_subnets       = var.public_subnets
  private_subnets      = var.private_subnets
}