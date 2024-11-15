variable "app_name" {
  description = "The application name."
}

variable "vpc_id" {
  description = "The VPC ID for the ALB."
}

variable "subnets" {
  description = "The subnets for the ALB."
}

variable "security_group_id" {
  description = "The security group for the ALB."
}

variable "certificate_arn" {
  description = "The ACM certificate ARN for the HTTPS listener."
}

variable "domain_name" {
  description = "The root domain name."
}

variable "subdomain" {
  description = "The subdomain to use for HTTPS."
}
