resource "aws_instance" "webserver" {
  ami = "ami-0c2f25c1f66a1ff4d"
  instance_type = "t2.micro"
}