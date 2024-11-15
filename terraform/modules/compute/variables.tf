variable "cluster_name" {
  description = "The ECS cluster name."
}

variable "app_name" {
  description = "The application name for ECS."
}

variable "ecr_repo_name" {
  description = "The ECR repository name."
}

variable "subnets" {
  description = "Subnets for ECS and ALB."
}

variable "security_group_id" {
  description = "Security group ID for ECS and ALB."
}

variable "certificate_arn" {
  description = "The ACM certificate ARN for HTTPS listener."
}

variable "domain_name" {
  description = "The root domain name."
}

variable "subdomain" {
  description = "The subdomain to use for HTTPS."
}

variable "vpc_id" {
  description = "The VPC ID."
}

variable "execution_role_arn" {
  description = "The ARN of the execution role for the ECS task."
}
