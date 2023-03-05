resource "aws_instance" "my-ec2" {
  ami                    = "ami-006dcf34c09e50022"
  instance_type          = "t2.micro"
  availability_zone = "us-east-1a"

  #availability_zone = "us-east-1b"


  lifecycle {
    create_before_destroy = true
  }
}
