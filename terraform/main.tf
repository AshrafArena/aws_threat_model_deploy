module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
}

module "security_groups" {
  source  = "./modules/security-groups"
  vpc_id  = module.vpc.vpc_id
}

module "alb" {
  source            = "./modules/alb"
  app_name          = var.app_name
  vpc_id            = module.vpc.vpc_id
  subnets           = module.vpc.public_subnets
  security_group_id = module.security_groups.alb_sg_id
  certificate_arn   = var.acm_certificate_arn
}

module "ecs" {
  source            = "./modules/ecs"
  cluster_name      = var.cluster_name
  app_name          = var.app_name
  ecr_image         = var.ecr_image
  subnets           = module.vpc.public_subnets
  security_group_id = module.security_groups.ecs_sg_id
  execution_role_arn = var.execution_role_arn
  target_group_arn  = module.alb.target_group_arn
}
