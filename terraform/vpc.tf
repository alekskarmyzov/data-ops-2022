module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"

  name = "${var.owner}-${var.environment}-vpc"
  cidr = var.vpc_cidr

  azs             = var.azs
  public_subnets  = var.public_cidrs

  enable_nat_gateway     = false
  enable_vpn_gateway     = false

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Owner       = var.owner
  }
}