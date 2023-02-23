resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  provider = aws.us-west-1
 #provider=<PROVISER_NAME>.<ALIAS>
  tags = {
    Name = "VPC1"
  }
}
