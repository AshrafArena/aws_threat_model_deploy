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

module "ecr" {
  source    = "./modules/ecr"
  repo_name = var.ecr_repo_name
}

module "ecs" {
  source            = "./modules/ecs"
  cluster_name      = var.cluster_name
  app_name          = var.app_name
  ecr_image         = module.ecr.repository_url
  security_group_id = module.security_groups.ecs_sg_id
  subnets           = module.vpc.public_subnets
}

module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  subnets           = module.vpc.public_subnets
  security_group_id = module.security_groups.alb_sg_id
  target_group_arn  = module.ecs.target_group_arn
  certificate_arn   = var.acm_certificate_arn
}


