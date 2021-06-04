module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.77.0"

  name                 = "${local.env_prefix}-vpc"
  cidr                 = "172.16.0.0/16"
  azs                  = data.aws_availability_zones.available.names
  public_subnets       = ["172.16.1.0/24", "172.16.2.0/24"]
  private_subnets      = ["172.16.101.0/24", "172.16.102.0/24"]
  enable_dns_hostnames = true
  enable_dns_support   = true
}
