terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./modules/network"

  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr    = var.public_subnet_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  private_subnet_2_cidr = var.private_subnet_2_cidr
  az_1                  = var.az_1
  az_2                  = var.az_2
}

module "security" {
  source         = "./modules/security"
  vpc_id         = module.network.vpc_id
  ssh_cidr_block = var.ssh_cidr_block
}

module "compute" {
  source = "./modules/compute"

  key_name              = var.key_name
  public_key            = var.public_key
  ami_id                = var.ami_id
  ec2_instance_type     = var.ec2_instance_type
  public_subnet_id      = module.network.public_subnet_id
  ec2_security_group_id = module.security.ec2_security_group_id
}

module "database" {
  source = "./modules/database"

  private_subnet_ids    = module.network.private_subnet_ids
  rds_security_group_id = module.security.rds_security_group_id

  db_subnet_group_name = var.db_subnet_group_name
  db_identifier        = var.db_identifier
  db_engine            = var.db_engine
  db_engine_version    = var.db_engine_version
  db_instance_class    = var.db_instance_class
  db_allocated_storage = var.db_allocated_storage
  db_storage_type      = var.db_storage_type
  db_name              = var.db_name
  db_username          = var.db_username
  db_password          = var.db_password
}
