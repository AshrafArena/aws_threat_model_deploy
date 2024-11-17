variable "cluster_name" {
  description = "Name of the ECS cluster."
}

variable "app_name" {
  description = "Name of the ECS application."
}

variable "ecr_image" {
  description = "ECR image URL with tag."
}

variable "subnets" {
  description = "Subnets for the ECS service."
}

variable "security_group_id" {
  description = "Security group for ECS tasks."
}

variable "execution_role_arn" {
  description = "IAM role ARN for ECS execution."
}

variable "target_group_arn" {
  description = "Target group ARN for the ALB."
}

variable "aws_region" {
  
}
