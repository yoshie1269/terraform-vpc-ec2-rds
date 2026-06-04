variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block fpr private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for private subnet 2"
  type        = string
  default     = "10.0.3.0/24"
}

variable "az_1" {
  description = "Availability Zone 1"
  type        = string
  default     = "ap-northeast-1a"
}

variable "az_2" {
  description = "Availability Zone 2"
  type        = string
  default     = "ap-northeast-1c"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  default     = true
}

variable "ssh_cidr_block" {
  description = "CIDR block allowed to SSH"
  type        = string
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
}

variable "public_key" {
  description = "Path key for EC2 key pair"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "db_subnet_group_name" {
  description = "DB subnet group name"
  type        = string
  default     = "terraform-db-subnet-group"
}

variable "db_identifier" {
  description = "RDS identifier"
  type        = string
  default     = "terraform-rds"
}

variable "db_engine" {
  description = "Database engine"
  type        = string
  default     = "mysql"
}

variable "db_engine_version" {
  description = "Database engine version"
  type        = string
  default     = "8.0"
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Allocated storage size for RDS"
  type        = number
  default     = 20
}

variable "db_storage_type" {
  description = "Storage type for RDS"
  type        = string
  default     = "gp2"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "appdb"
}

variable "db_username" {
  description = "RDS master username"
  type        = string
  default     = "admin"
}
