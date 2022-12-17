resource "aws_s3_bucket" "finance" {
  bucket = "finance-data"
  tags    = {
    Description = "Finace and Payroll"
  }
}

resource "aws_s3_bucket_object" "finance-data" {
  content = "/root/finance/finance-data.doc"
  key = "finance-data.doc"
  bucket = aws_s3_bucket.finance.id
}
data "aws_iam_group" "finance-data2" {
  group_name = "finance-analysts"
}

resource "aws_s3_bucket_policy" "finance-policy" {
  bucket = aws_s3_bucket.finance.id
  policy = <<EOF

 EOF 
}