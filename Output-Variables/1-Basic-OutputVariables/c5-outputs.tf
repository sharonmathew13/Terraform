#Output Variables

#Attribute EC2 Instance Public IP
output "ec2_instance_public_ip" {
  description = "EC2 INSTANCE PUBLIC IP"
  value = aws_instance.my-ec2-vm.public_ip
}

#Attribute EC2 Instance Private IP
output "ec2_instance_private_ip" {
  description = "EC2 INSTANCE PRIVATE IP"
  value = aws_instance.my-ec2-vm.private_ip
}

#Attribute EC2 Instance Security Group Associtaed
output "ec2_instance_security_groups" {
  description = "EC2 INSTANCE SECURITY GROUP"
  value = aws_instance.my-ec2-vm.security_groups
}

#Attribute EC2 Instance Public DNS
output "ec2_instance_public_dns" {
    value = "http://${aws_instance.my-ec2-vm.public_dns}"
  
}