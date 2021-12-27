module "vpc_network" {
    source                            = "../mobari-module-vpc"
    env                               = "PROD"
    ou                                = ""
    name                              = var.name
    vpc_cidr_block                    = var.vpc_cidr_block
    primary_subnet_name               = var.primary_subnet_name
    primary_subnet_cidr               = var.primary_subnet_cidr
    secondary_subnet_name             = var.secondary_subnet_name
    secondary_subnet_cidr             = var.secondary_subnet_cidr
    tertiary_subnet_name              = var.tertiary_subnet_name
    tertiary_subnet_cidr              = var.tertiary_subnet_cidr
    public_rt_name                    = var.public_rt_name
    private_rt_name                   = var.private_rt_name

}

