variable "app_name" {
  description = "Name of the application."
}

variable "vpc_id" {
  description = "VPC ID where the ALB is deployed."
}

variable "subnets" {
  description = "Subnets where the ALB will be deployed."
}

variable "security_group_id" {
  description = "Security group for the ALB."
}

variable "certificate_arn" {
  description = "ARN of the ACM Certificate for HTTPS."
}
