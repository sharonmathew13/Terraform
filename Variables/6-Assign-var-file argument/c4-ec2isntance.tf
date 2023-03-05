resource "aws_instance" "myec2" {
  ami                    = var.aws_ami_id
  instance_type          = var.aws_instance_type
  key_name               = "terraform-key"
  count                  = var.aws_instance_count
  vpc_security_group_ids = [aws_security_group.vpc-web.id, aws_security_group.vpc-ssh.id]
  user_data              = file("apache-install.sh")
}