variable "aws_region" {
  description = "AWS region for resources"
}

variable "acm_certificate_arn" {
  description = "The ACM certificate ARN for HTTPS."
}

variable "route53_zone_id" {
  description = "The Route 53 hosted zone ID."
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
}

variable "ecr_repo_name" {
  description = "The name of the ECR repository."
}

variable "cluster_name" {
  description = "The name of the ECS cluster."
}

variable "app_name" {
  description = "The application name for ECS."
}

variable "domain_name" {
  description = "The root domain name."
}

variable "subdomain" {
  description = "The subdomain to use for HTTPS."
}
