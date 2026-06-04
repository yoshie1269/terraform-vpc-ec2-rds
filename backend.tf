terraform {
  backend "s3" {
    bucket = "onishi-yoshie-terraform-state-202606"
    key    = "terraform-vpc-ec2-rds/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
