resource "aws_instance" "web" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "web${count.index}"
  }
}