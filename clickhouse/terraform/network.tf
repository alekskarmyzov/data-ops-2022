module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    name = "${var.prefix}-clickhouse-vpc"
    cidr = var.vpc_cidr

    azs             = var.az_list
    public_subnets  = var.public_cidr_list


    enable_nat_gateway = false
    single_nat_gateway = false
    one_nat_gateway_per_az = false

    tags = {
        Terraform = "true"
        Owner = var.prefix
    }
}