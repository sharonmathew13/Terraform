#Security Group - SSH Traffic
resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "ssh port allow port 22"
  ingress {
    description = "Allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow port and IP outboung"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}

#Security Group for HTTP Traffic
resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "web port allow port 80"
  ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow port and IP outboung"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}