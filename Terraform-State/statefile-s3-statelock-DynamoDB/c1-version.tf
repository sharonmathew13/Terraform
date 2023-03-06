# Terraform Block
terraform {
  required_version = "~> 1.3.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57.0"
    }
  }

  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-13-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    
     # For State Locking
 # For State Locking
    dynamodb_table = "terraform-dev-table"
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
