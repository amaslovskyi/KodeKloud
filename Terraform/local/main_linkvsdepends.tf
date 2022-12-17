resource "local_file" "pet" {
  filename = var.filename
  content = "Myfavorite pet is Mr.Cat"

  depends_on = [   # explicit dependency, local file create after random_pet
    random_pet.my-pet
  ]
}

resource "random_pet" "my-pet" {
  prefix = var.prefix
  separator = var.separator
  length = var.length
}