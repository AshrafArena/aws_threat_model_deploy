variable "cluster_name" {
  description = "The ECS cluster name."
}

variable "app_name" {
  description = "The application name for ECS."
}

variable "ecr_image" {
  description = "The ECR image URL for the app container."
}

variable "subnets" {
  description = "Subnets for the ECS service."
}

variable "security_group_id" {
  description = "Security group ID for ECS tasks."
}

variable "target_group_arn" {
  description = "The target group ARN for the ALB."
}
