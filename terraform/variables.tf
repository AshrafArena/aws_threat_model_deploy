variable "aws_region" {
  default = "eu-west-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "ecr_repo_name" {
  default = "achraf/threatcomposer"
}

variable "cluster_name" {
  default = "ecs-cluster"
}

variable "app_name" {
  default = "threat-composer"
}

variable "domain_name" {
  default = "*.achrafm.com"
}

variable "subdomain" {
  default = "threatcomposer.achrafm.com"
}
