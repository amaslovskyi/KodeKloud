# Create a data block - read information of the specific resource
resource "local_file" "pet" {
  filename = "/root/pets.txt"
  content = data.local_file.dog.content
}

data "local_file" "dog" {
    filename = "/root/dog.txt"
}