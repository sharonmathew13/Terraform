locals {
  bucket-name = "${var.app_name}-${var.env_name}-bucket"
}

resource "aws_s3_bucket" "mys3" {
  bucket = local.bucket-name
  tags = {
    Name        = local.bucket-name
    Environment = var.env_name
  }
}