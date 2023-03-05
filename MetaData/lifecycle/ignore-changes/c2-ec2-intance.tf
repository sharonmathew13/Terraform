resource "aws_instance" "my-ec2" {
  ami           = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
  }


 lifecycle {
   ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
         tags,
   ]
 }
}