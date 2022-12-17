provider "aws" {
  region = "eu-central-1"
}

resource "aws_iam_user" "admin-user" {
    name = "lucy"
    tags = {
      Description = "Technical Team Leader"
    }
}

resource "aws_iam_policy" "adminUser" {
    name  = "AdminUsers"
    policy = file("admin-policy.json")
}

resource "aws_iam_user_policy_attachment" "lucy-admin-access" {
    user = aws_iam_user.admin-user.name
    policy_arn = aws_iam_policy.adminUser.arn
  
}

# add users to group
resource "aws_iam_user" "users" {
  name = var.project-sapphire-users[count.index]
  count = length(var.project-sapphire-users)
}
