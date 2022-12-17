variable "filename" {
  default = "/d/Cloud/OneDrive/Edu/KodeKloud/Terraform/pets.txt"
}
variable "content" {
  default = "We love pets!"
}
# list
variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = list(string)  #  or list(number)
}
variable "separator" {
  default = "."
}
variable "length" {
  default = "1"
}
variable file-content {
  type = map
  default = {
    "statement1" = "We love pets!"
    "statement2" = "Wwe love animals!"
  }
}
# map
variable "cats" {
  default = {
    "color" = "brown"
    "name" = "bella"
  }
  type = map(string)
}
variable "pet_count" {
  default = {
    "dogs" = 3
    "cats" = 1
    "goldfish" = 2
  }
  type = map(number)
}
# sets
variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = set(string)  #  or set(number)
}
# object
variable "bella" {
  type = object({
    name = string
    color = string
    age = number
    food = list(string)
    favorite_pet = bool
  })

  default = {
    name = "bella"
    color = "brown"
    age = 7
    favorite_pet = true
    food = ["fish", "chiken", "turkey"]
  }
}
# tuples
variable kitty {
  type = tuples([string, number, bool])
  default = ["cat", 7, true]

}
variable "jedi" {
     type = map
     default = {
     filename = "/root/first-jedi"
     content = "phanius"
     }
  
}