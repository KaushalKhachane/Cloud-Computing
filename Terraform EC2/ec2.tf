resource "aws_instance" "terraformec2" {
  ami = "ami-08f7912c15ca96832"

  instance_type = "t3.nano"
  tags = {
    Name = "test-terraform"
  }
}