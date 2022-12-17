# 2 way of for_each as a map
resource "local_file" "pet" {
  filename = each.value
  for_each = var.file # toset(var.filename)
}