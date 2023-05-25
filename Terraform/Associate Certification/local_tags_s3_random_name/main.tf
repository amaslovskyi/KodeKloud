resource "aws_instance" "web" {
  ami           = "ami-"
  instance_type = "t3.micro"
  tags          = local.common_tags
}

resource "aws_instance" "db" {
  ami           = "ami-"
  instance_type = "t3.small"
  tags          = local.common_tags
}

locals {
  common_tags = {
    Department = "devops"
    Project    = "dev"
  }
}

resource "aws_s3_bucket" "dev_bucket" {
  acl = "private"
  bucket = ?
}

resource "random_string" "random_suffix" {
  length = 6
  special = false
  upper = false
}

variable "project" {
  default = "cerberus"
}

locals {
  bucket-prefix = "${var.project}-${random_string.random-suffix.id}.bucket"
}