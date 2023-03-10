terraform {
  required_version = "~> 1.3" 
  required_providers {
    aws = {
        source="hashicorp/aws"
        version="= 3.5.0"
        }
    random = {
        source = "hashicorp/random"
        version="3.0.0"
    }
    }   
  }

  #provider configuration
  provider "aws" {
    region = "us-east-1"
    profile = "default"
  }
