provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
}

module "security_groups" {
  source = "./modules/security-groups"
  vpc_id = module.vpc.vpc_id
}

module "ecs" {
  source            = "./modules/ecs"
  cluster_name      = var.cluster_name
  app_name          = var.app_name
  ecr_image         = var.ecr_image
  security_group_id = module.security_groups.ecs_sg_id
  subnets           = module.vpc.public_subnets
  execution_role_arn = "arn:aws:iam::971422696890:role/ecs-task-execution-role"
  target_group_arn  = module.alb.target_group_arn
}

module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  subnets           = module.vpc.public_subnets
  security_group_id = module.security_groups.alb_sg_id
  certificate_arn   = var.acm_certificate_arn
  app_name          = var.app_name
  domain_name       = var.domain_name
  subdomain         = var.subdomain
}
