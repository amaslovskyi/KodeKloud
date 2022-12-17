variable "filename" {
  type=set(string) # list(string)
  default = [ 
    "/root/pets.txt",
    "/root/dogs.txt",
    "/root/cats.txt"
    ]
}