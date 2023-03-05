# VARIABLES
variable "aws_region" {
  description = "The ec2 region"
  type        = string
  default     = "us-east-1"
}

variable "aws_ami_id" {
  description = "THe ami id of ec2"
  type        = string
  default     = "ami-0dfcb1ef8550277af"
}

variable "aws_instance_count" {
  type    = number
  default = 1
}

variable "aws_instance_type" {
  type    = list(string)
  default = ["t2.micro","t2.small","t2.large"]
}