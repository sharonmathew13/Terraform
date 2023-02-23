resource "aws_instance" "myec2" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.vpc-dev-public-subnet-1.id
  key_name      = "terraform-key"
 # user_data     = file("apache-install.sh")
  vpc_security_group_ids = [ aws_security_group.dev-vpc-sg.id ]
  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF
  tags = {
    "Name" = "myec2vm"
  }    
  }