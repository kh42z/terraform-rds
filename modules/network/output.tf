output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "VPC public subnets"
  value       = module.vpc.public_subnets
}
