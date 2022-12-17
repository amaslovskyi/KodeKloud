# ignore changes to resources Attributes, on tag for example
resource "aws_instance" "webserver" {
  ami = "ami-0edab43b6fa892279"
  instance_type = "t2.micro"
  tags = {
    name = "ProjectA-Webserver"
  }
  lifecycle {
    ignore_changes = [
        tags
    ]
  }
}