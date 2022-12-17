terraform {
  backend "s3" {
    bucket       = "kodekloud-terraform-bucket01"
    key          = "finance/terraform.tfstate"
    region       = "us-west-1"
    dynamo_table = "state-locking"
  }
}
