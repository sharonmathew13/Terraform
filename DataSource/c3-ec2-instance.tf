resource "aws_instance" "my-ec2" {
  ami             = data.aws_ami.amzlinux.id
  instance_type   = var.ec2_instance_type
  key_name        = "terraform-key"
  user_data       = file("apache-install.sh")
  security_groups = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "amx-linux-vm"
  }


}