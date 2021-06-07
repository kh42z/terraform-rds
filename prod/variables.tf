# AWS
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

# RDS
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

# NETWORK
variable "cidr" {
  description = "CIDR block for the VPC"
  type = string
  default = "172.16.0.0/16"
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type = list
  default = ["172.16.1.0/24", "172.16.2.0/24"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type = list
  default = ["172.16.100.0/24", "172.16.101.0/24"]
}
