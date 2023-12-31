terraform {
  cloud {
    organization = "devops-edu"

    workspaces {
      name = "devops-aws-myapp-dev"
    }
  }
}
