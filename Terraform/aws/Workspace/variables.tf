variable "region" {
  default = "ca-central-1"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "ami" {
  type = map(any)
  default = {
    "ProjectA" = "ami-0edab43b6fa892279",
    "ProjectB" = "ami-0c2f25c1f66a1ff4d"
  }
}
