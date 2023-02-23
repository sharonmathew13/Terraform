resource "aws_instance" "myec2" {
  ami               = "ami-0dfcb1ef8550277af"
  instance_type     = "t2.micro"
  //availability_zone = "us-east-1a"
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "web"
    "tag1" = "update-test-1"
  }

}
