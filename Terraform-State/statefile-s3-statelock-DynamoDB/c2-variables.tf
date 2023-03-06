# VARIABLES
variable "aws_region" {
  description = "The ec2 region"
  type        = string
  default     = "us-east-1"
}

variable "ec2_instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
  #default = "t2.small"

}
