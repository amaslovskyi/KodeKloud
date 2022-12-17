resource "aws_instance" "webserver" {
  ami                    = "ami-065deacbcaac64cf2"
  instance_type          = "t2.micro"
  user_data              = file("start_serv.sh")
  key_name               = "terraform" # aws_key_pair.web.id
  vpc_security_group_ids = [aws_security_group.ssh-access.id]

  tags = {
    Nmae        = "webserver"
    Description = "An Nginx WebServer on Ubuntu"
  }

}
# creating a key pair
# resource "aws_key_pair" "web" {
#   public_key = file("/root/.ssh/web.pub")
# }
resource "aws_security_group" "ssh-access" {
  name        = "ssh-access"
  description = "Allow SSH access from the Internet"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
output "publicip" {
  value = aws_instance.webserver.public_ip
}
