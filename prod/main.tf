module "rds" {
  source =  "../modules/rds"

  depends_on = [module.network.vpc_id]
  env_prefix = local.env_prefix
  rds_allocated_storage = var.rds_allocated_storage
  rds_authorized_ips = var.rds_authorized_ips
  rds_instance_type = var.rds_instance_type
  rds_password = var.rds_password
  vpc_id = module.network.vpc_id
  public_subnets = module.network.public_subnets
}


module "network" {
  source  = "../modules/network"

  env_prefix = local.env_prefix
  cidr                 = var.cidr
  azs = data.aws_availability_zones.available.names
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
}
