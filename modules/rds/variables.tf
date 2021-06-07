variable "env_prefix" {
  description = "Resources prefix"
  type = string
}

variable "rds_allocated_storage" {
  description = "RDS allocated storage"
  type = number
}

variable "rds_authorized_ips" {
  description = "List of authorized ips allowed to connect to pg"
  type = list
}

variable "rds_instance_type" {
  description = "RDS instance type"
  type = string
}

variable "rds_password" {
  description = "RDS root user password"
  sensitive   = true
}

variable "public_subnets" {
  description = "A list of public subnets"
  type = list
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

