# VARIABLES
variable "aws_region" {
  description = "The ec2 region"
  type        = string
  default     = "us-east-1"
}

variable "db_username" {
    description = "AWS RDS DATABASE Username"
    type = string 
    sensitive = true
}

variable "db_password" {
  description = "AWS RDS Password"
  type = string
  sensitive = true
}
