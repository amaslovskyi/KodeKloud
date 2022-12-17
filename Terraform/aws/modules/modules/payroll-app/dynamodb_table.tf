resource "aws_dynamodb_table" "payroll_db" {
  name         = "user_data"
  billing_mode = "PEY_PER_REQUEST"
  hash_key     = "EmployeeID"

  attribute {
    name = "EmployeeID"
    type = "N"
  }
}
