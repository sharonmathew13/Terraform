# Resource Block
# Resource-1: Create VPC
resource "aws_vpc" "vpc_dev" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc_dev"
  }
}

# Resource-2: Create Subnets
resource "aws_subnet" "vpc-dev-public-subnet" {
  vpc_id            = aws_vpc.vpc_dev.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  #EC2 is launched in public subnet, in the subnet the public ip should be auto assigned so true!
  map_public_ip_on_launch = true
}

# Resource-3: Internet Gateway
resource "aws_internet_gateway" "vpc-dev-igw" {
  vpc_id = aws_vpc.vpc_dev.id
}

# Resource-4: Create Route Table
resource "aws_route_table" "vpc-dev-route-table" {
  vpc_id = aws_vpc.vpc_dev.id
}

# Resource-5: Create Route in Route Table for Internet Access
resource "aws_route" "vpc-dev-public-route" {
  route_table_id         = aws_route_table.vpc-dev-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.vpc-dev-igw.id
}

# Resource-6: Associate the Route Table with the Subnet
resource "aws_route_table_association" "vpc-dev-route-public-table-associate" {
  route_table_id = aws_route_table.vpc-dev-route-table.id
  subnet_id      = aws_subnet.vpc-dev-public-subnet.id
}

resource "aws_security_group" "vpc-dev-sg" {
  name        = "aws_security_group"
  description = "Dev VPC Default Security Group"
  vpc_id      = aws_vpc.vpc_dev.id

  ingress {
    description = "Allow Port 22"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}











