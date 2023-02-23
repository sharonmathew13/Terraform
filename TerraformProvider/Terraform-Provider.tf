terraform {
  required_version = "~> 1.3" 
  required_providers {
    aws = {
        source="hashicorp/aws"
        version="~>4.55.0"
    }
    }   
  }

  #provider configuration
  provider "aws" {
    region = "us-east-1"
    profile = "default"
    
    
  }
