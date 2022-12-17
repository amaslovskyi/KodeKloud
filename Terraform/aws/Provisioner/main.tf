resource "aws_instance" "webserver" {
  ami                    = "ami-065deacbcaac64cf2"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.web
  vpc_security_group_ids = [aws_security_group.ssh-access.id]
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx",
    ]
    # provisioner "remote-exec" {
    #  inline = ["echo $(hostname -i) >> /tmp/ips.txt"]
    #}
  }
}
connection {
  type        = "ssh"
  host        = self.public
  user        = "ubuntu"
  private_key = file("/root/.ssh.web")
}

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
resource "aws_key_pair" "web" {

}
