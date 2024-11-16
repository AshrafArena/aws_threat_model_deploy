variable "vpc_cidr" {
  description = "CIDR block for the VPC."
}

variable "acm_certificate_arn" {
  description = "ACM Certificate ARN for HTTPS."
}

variable "route53_zone_id" {
  description = "Route 53 Hosted Zone ID."
}

variable "execution_role_arn" {
  description = "ARN of the execution role for ECS tasks."
}

variable "cluster_name" {
  description = "Name of the ECS cluster."
}

variable "app_name" {
  description = "Name of the application."
}

variable "ecr_image" {
  description = "ECR image URL with tag."
}
