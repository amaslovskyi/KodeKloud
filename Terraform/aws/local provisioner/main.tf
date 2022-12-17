resource "aws_instance" "webserver" {
  ami           = "ami-065deacbcaac64cf2"
  instance_type = "t2.micro"
  provisioner "local-exec" {
    # on_failure = continue   //continue even when error
    command = "echo Instance ${aws_instance.webserver.public_ip} Created! > /tmp/ips.txt"
  }
  provisioner "local-exec" {
    when    = destroy
    command = "echo Instance ${aws_instance.webserver.public_ip} Destroy! > /tmp/ips.txt"
  }
}
