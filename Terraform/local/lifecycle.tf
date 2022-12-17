# Create resource first and then destroy older, prevent destroy of a resource
resource "local_file" "pet" {
  filename = "/root/pets.txt"
  content = "We love pets!"
  file_permission = "0700"

  lifecycle {
    create_befor_destroy = true # prevent_destroy = true
  }
}