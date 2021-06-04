resource "aws_db_subnet_group" "rds_subnet" {
  name       = "${local.env_prefix}-rds-subnet"
  subnet_ids = module.vpc.public_subnets
}
