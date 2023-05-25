variable "ami" {
  default = "ami-"
}
variable "instance_type" {
  default = "t3.small"
}
variable "webservers" {
  type    = "set"
  default = ["web1", "web2", "web3"]
}
