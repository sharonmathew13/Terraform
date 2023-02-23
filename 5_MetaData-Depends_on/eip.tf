resource "aws_eip" "my-eip" {
  instance = aws_instance.myec2.id
  vpc      = true
  #Adding the Meta Argument
  depends_on = [aws_internet_gateway.vpc-dev-igw]
}