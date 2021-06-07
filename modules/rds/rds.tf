resource "aws_db_parameter_group" "rds" {
  name   = "${var.env_prefix}-cluster"
  family = "postgres11"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_db_instance" "rds" {
  identifier             = "${var.env_prefix}-rds"
  instance_class         = var.rds_instance_type
  allocated_storage      = var.rds_allocated_storage
  engine                 = "postgres"
  engine_version         = "11.11"
  username               = "root"
  password               = var.rds_password
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet.name
  vpc_security_group_ids = [aws_security_group.sg_public_rds.id]
  parameter_group_name   = aws_db_parameter_group.rds.name
  publicly_accessible    = true
  skip_final_snapshot    = true
  apply_immediately      = true
}
