resource "aws_instance" "web" {
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.availability_zone

  tags = {
    Name = "Apache web server"
  }
}