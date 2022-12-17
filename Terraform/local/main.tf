resource "local_file" "pet" {
  filename = var.filename
  content = var.content
  file_permission = "0700"
}

resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}
resource local_file mypet {
  filename = var.filename
  content = var.file-content["statement2"]
}
resource "local_file" "jedi" {
     filename = var.jedi["filename"]
     content = var.jedi["content"]
}