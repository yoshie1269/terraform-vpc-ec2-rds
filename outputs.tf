output "vpc_id" {
  description = "VPC ID"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = module.network.public_subnet_id
}

output "private_subnet_ids" {
  description = "Private Subnet IDs"
  value       = module.network.private_subnet_ids
}

output "ec2_public_ip" {
  description = "EC2 Public IP"
  value       = module.compute.ec2_public_ip
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = module.database.rds_endpoint
}
