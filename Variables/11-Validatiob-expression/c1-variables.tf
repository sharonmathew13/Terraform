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
  validation {
    condition = length(var.aws_ami_id) > 4 && substr(var.aws_ami_id,0,4) == "ami-"
    error_message = "The ec2_ami_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "aws_instance_count" {
  type    = number
  default = 1
}

variable "aws_instance_type" {
  type = map(string)
  default = {
    "small-apps"  = "t2.small"
    "medium-apps" = "t2.medium"
    "large-apps"  = "t2.large"
  }
}

variable "aws_instance_tags" {
  type = map(string)
  default = {
    "Name" = "ec2-web"
    "Tier" = "Web"
  }
}
