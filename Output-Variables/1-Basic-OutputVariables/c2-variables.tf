# VARIABLES
variable "aws_region" {
  description = "The ec2 region"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "EC2 - AMI ID"
  type = string
  default = "ami-0dfcb1ef8550277af"
}

variable "ec2_instance_type" {
  description = "EC2 -INSTANCE TYPE"
  type = string
  default = "t2.micro"
}
