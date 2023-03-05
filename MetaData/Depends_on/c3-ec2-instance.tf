resource "aws_instance" "my-ec2-vm" {
  ami                    = "ami-006dcf34c09e50022"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  subnet_id              = aws_subnet.vpc-dev-public-subnet.id
  vpc_security_group_ids = [aws_security_group.vpc-dev-sg.id]
  user_data              = file("apache-install.sh")

}