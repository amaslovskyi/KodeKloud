resource "aws_iam_policy" "adminUser" {
  name   = "AdminUsers"
  policy = file("admin-policy.json")
}

resource "local_file" "pet" {
  filename = var.filename
  count    = length(var.filename)
}

resource "local_file" "pet" {
  filename = var.filename
  # convert from a list to a set
  for_each = toset(var, region)
}
