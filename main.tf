module "terra_network" {

    source = "./network"

    vpc_cidr = var.vpc_cidr
    sub_pub1_cidr = var.sub_pub1_cidr
    sub_pri1_cidr = var.sub_pub2_cidr
    sub_pub2_cidr = var.sub_pri1_cidr
    sub_pri2_cidr =var.sub_pri2_cidr
    env_region= var.env_region
    pub1_az =var.pub1_az
    pub2_az=var.pub2_az
    pri1_az=var.pri1_az
    pri2_az=var.pri2_az

  
}
