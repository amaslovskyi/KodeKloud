# create a multiple instances of a local file
resource "local_file" "pet" {
  filename = var.filename

  count = 3 # count = length(var.filename)

}