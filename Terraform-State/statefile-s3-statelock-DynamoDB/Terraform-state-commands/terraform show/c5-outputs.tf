output "ec2_instance_publicIp" {
  value = aws_instance.my-ec2-vm.public_ip
}

output "ec2_instance_publicDNS" {
  value = aws_instance.my-ec2-vm.public_dns
}