variable "env_prefix" {
  description = "Resources prefix"
  type        = string
}

variable "cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "public_subnets" {
  description = "VPC public subnets"
  type        = list(any)
}

variable "private_subnets" {
  description = "VPC private subnets"
  type        = list(any)
}

variable "azs" {
  description = "VPC availibity zones"
  type        = list(any)
}
