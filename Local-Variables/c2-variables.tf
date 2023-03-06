# VARIABLES
variable "aws_region" {
  description = "The ec2 region"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Application Name"
  type        = string
}

variable "env_name" {
  description = "Environment name"
  type        = string
}