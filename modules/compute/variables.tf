variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
}

variable "public_key" {
  description = "Public key for EC2 key pair"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID"
  type        = string
}

variable "ec2_security_group_id" {
  description = "Security Group ID for EC2"
  type        = string
}
