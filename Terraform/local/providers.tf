terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        version = "1.4.0" # "> 1.2.0, < 2.0.0, != 1.4.0", ~> 1.2
    }
  }
}

resource "local_file" "pet" {
    filename = "/root/pet.txt"
    content = "We love pets!"
}