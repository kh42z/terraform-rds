resource "aws_db_subnet_group" "rds_subnet" {
  name       = "${var.env_prefix}-rds-subnet"
  subnet_ids = var.public_subnets
}
