output "ec2_instance_publicIp" {
  value = aws_instance.my-ec2.public_ip
}

output "ec2_instance_publicDNS" {
  value = aws_instance.my-ec2.public_dns
}