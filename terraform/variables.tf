variable "aws_region" {
  description = "AWS region for resources"
}

variable "acm_certificate_arn" {
  description = "The ACM certificate ARN for HTTPS."
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
}

variable "ecr_image" {
  description = "The ECR image URL for the app container."
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

variable "execution_role_arn" {
  description = "The ARN of the execution role for the ECS task."
}

