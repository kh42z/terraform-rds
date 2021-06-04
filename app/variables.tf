variable "region" {
  default     = "eu-west-3"
  description = "AWS region"
}

variable "env_name" {
  description = "environment name"
  type = string
}

variable "app_name" {
  description = "app name"
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

