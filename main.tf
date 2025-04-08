module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
  public_availability_zone = var.public_availability_zone
  private_availability_zone = var.private_availability_zone
  default_tags = var.default_tags
  
}

module "alb" {
  source          = "./modules/alb"
  subnets_id      = module.vpc.subnet_ids[*]
  security_groups = [module.sg.security_group_id]
  alb_name = var.alb_name
  default_tags    = var.default_tags
}

module "ec2" {
  source             = "./modules/ec2"
  subnet_id          = module.vpc.subnet_ids[0]
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  security_group_ids = [module.sg.security_group_id]
  availability_zone = var.instance_availability_zone
  default_tags       = var.default_tags
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
  default_tags = var.default_tags
  
}
