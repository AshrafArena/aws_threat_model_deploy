provider "aws" {
  region = var.aws_region
}

module "networking" {
  source     = "./modules/networking"
  vpc_cidr   = var.vpc_cidr
}

module "compute" {
  source            = "./modules/compute"
  cluster_name      = var.cluster_name
  app_name          = var.app_name
  ecr_repo_name     = var.ecr_repo_name
  security_group_id = module.networking.ecs_sg_id
  subnets           = module.networking.public_subnets
  vpc_id            = module.networking.vpc_id
  certificate_arn   = var.acm_certificate_arn
  domain_name       = var.domain_name
  subdomain         = var.subdomain
}
