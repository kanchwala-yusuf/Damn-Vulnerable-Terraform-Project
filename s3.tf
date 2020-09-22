resource "aws_s3_bucket" "demo-example" {
  bucket = "demoexample-12249873"
  versioning {
    enabled = false
    mfa_delete = false
  }
}
